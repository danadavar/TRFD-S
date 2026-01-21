function [x, f_min, k, nf, H_mono, test] = dfqrm (x0, Ffun, nfmax)

ep=10^(-5);

n = height(x0);
x = x0;
f = Ffun(x0);

B=eye(n);
nf=1;
H=[f];
sigma_min=10^(-2);
sigma=1;

test=0;
u=[f];
k=0;

while nf<nfmax
 
  k=k+1;
  
  h= 2*ep/(5*sigma*sqrt(n));
  [g,H1,nf]=grad_fd_Ffun(x,f,h,n,nf,Ffun);
  H=[H;H1];
  ngrad=norm(g);
  while ngrad<(4/5)*ep
      teste=test+1;
      sigma=2*sigma;
      h=2*ep/(5*sigma*sqrt(n));
      [g,H1,nf]=grad_fd_Ffun(x,f,h,n,nf,Ffun);
      H=[H;H1];
      ngrad=norm(g);
  end
  d=-(B+sigma*eye(n))\g;
  x1=x+d;
  nstep1=norm(x1-x);
  c1=f-(sigma/8)*(nstep1^(2));
  [f1] = Ffun(x1);
  nf=nf+1;
  H=[H;f1];
  while f1>c1
    sigma=2*sigma;
    h=2*ep/(5*sigma*sqrt(n));
    [g,H1,nf]=grad_fd_Ffun(x,f,h,n,nf,Ffun);
    H=[H;H1];
    d=-(B+sigma*eye(n))\g;
    x1=x+d;
    nstep1=norm(x1-x);
    c1=f-(sigma/8)*(nstep1^(2));
    [f1] = Ffun(x1);
    nf=nf+1;
    H=[H;f1];
  end
  [g1,H1,nf]=grad_fd_Ffun(x1,f1,h,n,nf,Ffun);
  H=[H;H1];
  s=x1-x;
  y=g1-g;
  a=s'*y;
  if a>0
    z=B*s;
    S1=(y*y')/a;
    S2=(z*z')/(s'*B*s);
    B=B+S1-S2; % BFGS update
  end
  x=x1;
  f=f1;
  g=g1;
  u=[u;f];
  sigma=max([sigma/2 sigma_min]);
  %fprintf('%f, %f\n',f, nf/(n+1));
end

%%%%%%%%%%%%%%%%%%%%%  BUILD MONOTONE HISTORY H  %%%%%%%%%%%%%%%%%%%%%%%%%%

if height(H) == 1
    H = [H;H];
end

H_mono = zeros(nfmax,1);
H_mono(1) = H(1);

if nfmax <= height(H)
    for i = 2:nfmax
        if H(i) > H_mono(i-1)
            H_mono(i) = H_mono(i-1);
        else
            H_mono(i) = H(i);
        end
    end
else
    for i = 2:height(H)
        if H(i) > H_mono(i-1)
            H_mono(i) = H_mono(i-1);
        else
            H_mono(i) = H(i);
        end
    end

    for j = height(H)+1:nfmax
        H_mono(j) = H_mono(height(H));
    end
end

f_min = H_mono(end);
disp(f_min);