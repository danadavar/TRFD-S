function [g, H, nf] = grad_fd_Ffun(x, f, h, n, nf, Ffun)

H = [];  
I = eye(n);
g = zeros(n,1);

for j = 1:n
  z = x+h*I(:,j);
  fz = Ffun(z);
  nf = nf+1;
  H=[H;fz];
  g(j)=(fz-f)/h;
end
