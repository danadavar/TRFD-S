function [x] = opm_oracle_x(p, n, s)

x = zeros(n,1);

  switch p
      
    case 1 % Extended Freudenstein & Roth function
        
        [x, fstar, xtype, xlower, xupper] = argauss("setup", n);
        
        if s==1
            x=10*x; 
        end
        
    case 2 % Extended Trigonometric function
        
        [x, fstar, xtype, xlower, xupper] = arglina("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 3 % Extended Rosenbrock function
        
        [x, fstar, xtype, xlower, xupper] = arglinb("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 4 % Generalized Rosenbrock function
        
        [x, fstar, xtype, xlower, xupper] = arglinc("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 5 % Extended White & Holst function
        
        [x, fstar, xtype, xlower, xupper] = argtrig("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 6 % Extended Beale function
        
        [x, fstar, xtype, xlower, xupper] = arwhead("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 7 % Extended Penalty function
        
        [x, fstar, xtype, xlower, xupper] = bard("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 8 % Perturbed Quadratic function
        
        [x, fstar, xtype, xlower, xupper] = bdarwhd("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 9 % Raydan 1 function
        
        [x, fstar, xtype, xlower, xupper] = beale("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 10 % Raydan 2 function   
        
        [x, fstar, xtype, xlower, xupper] = biggs5("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 11 % Diagonal 1 function
        
        [x, fstar, xtype, xlower, xupper] = biggs6("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 12 % Diagonal 2 function
        
        [x, fstar, xtype, xlower, xupper] = booth("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 13 % Diagonal 3 function
        
        [x, fstar, xtype, xlower, xupper] = box2("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 14 % Hager function
        
        [x, fstar, xtype, xlower, xupper] = box3("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 15 % Generalized Tridiagonal 1 function
        
        [x, fstar, xtype, xlower, xupper] = bratu1d("setup", n);

        if s==1
            x=10*x;
        end

    case 16 % Extended Tridiagonal 1 function
        
        [x, fstar, xtype, xlower, xupper] = brkmcc("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 17 % Extended TET function
        
        [x, fstar, xtype, xlower, xupper] = brownal("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 18 % Generalized Tridiagonal 2 function
        
        [x, fstar, xtype, xlower, xupper] = brownbs("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 19 % Diagonal 4 function
        
        [x, fstar, xtype, xlower, xupper] = brownden("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 20 % Diagonal 5 function   
        
        [x, fstar, xtype, xlower, xupper] = broyden3d("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 21 % Extended Himmelblau function
        
        [x, fstar, xtype, xlower, xupper] = broydenbd("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 22 % Generalized White & Holst function
        
        [x, fstar, xtype, xlower, xupper] = chandheu("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 23 % Generalized PSC1 function
        
        [x, fstar, xtype, xlower, xupper] = chebyqad("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 24 % Extended PSC1 function
        
        [x, fstar, xtype, xlower, xupper] = cliff("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 25 % Extended Powell function
        
        [x, fstar, xtype, xlower, xupper] = clplatea("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 26 % Full Hessian FH1 function
        
        [x, fstar, xtype, xlower, xupper] = clplateb("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 27 % Full Hessian FH2 function
        
        [x, fstar, xtype, xlower, xupper] = clustr("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 28 % Extended BD1 function (Block Diagonal)
        
        [x, fstar, xtype, xlower, xupper] = cosine("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 29 % Extended Maratos function
        
        [x, fstar, xtype, xlower, xupper] = crglvy("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 30 % Extended Cliff function 
        
        [x, fstar, xtype, xlower, xupper] = cube("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 31 % Perturbed quadratic diagonal function
        
        [x, fstar, xtype, xlower, xupper] = curly10("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 32 % Extended Wood function
        
        [x, fstar, xtype, xlower, xupper] = curly20("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 33 % Extended Hiebert function
        
        [x, fstar, xtype, xlower, xupper] = curly30("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 34 % Quadratic QF1 function
        
        [x, fstar, xtype, xlower, xupper] = deconvu("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 35 % Extended quadratic penalty QP1 function
        
        [x, fstar, xtype, xlower, xupper] = dixmaana("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 36 % Extended quadratic penalty QP2 function
        
        [x, fstar, xtype, xlower, xupper] = dixmaanb("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 37 % Quadratic QF2 function
        
        [x, fstar, xtype, xlower, xupper] = dixmaanc("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 38 % Extended quadratic exponential EP1 function
        
        [x, fstar, xtype, xlower, xupper] = dixmaand("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 39 % Extended Tridiagonal 2 function
        
        [x, fstar, xtype, xlower, xupper] = dixmaane("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 40 % FLETCBV3 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixmaanf("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 41 % FLETCHER function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixmaang("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 42 % BDQRTIC function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixmaanh("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 43 % TRIDIA function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixmaani("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 44 % ARGLINB function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixmaanj("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 45 % ARWHEAD function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixmaank("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 46 % NONDIA function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixmaanl("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 47 % NONDQUAR function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dixon("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 48 % DQDRTIC function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = dqrtic("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 49 % EG2 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = edensch("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 50 % CURLY20 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = eg2("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 51 % DIXMAANA   
        
        [x, fstar, xtype, xlower, xupper] = eg2s("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 52 % DIXMAANB
        
        [x, fstar, xtype, xlower, xupper] = eigenals("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 53 % DIXMAANC
        
        [x, fstar, xtype, xlower, xupper] = eigenbls("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 54 % DIXMAAND
        
        [x, fstar, xtype, xlower, xupper] = eigencls("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 55 % DIXMAANE
        
        [x, fstar, xtype, xlower, xupper] = engval1("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 56 % DIXMAANF
        
        [x, fstar, xtype, xlower, xupper] = engval2("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 57 % DIXMAANG
        
        [x, fstar, xtype, xlower, xupper] = expfit("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 58 % DIXMAANH
        
        [x, fstar, xtype, xlower, xupper] = extrosnb("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 59 % DIXMAANI
        
        [x, fstar, xtype, xlower, xupper] = fminsurf("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 60 % DIXMAANJ
        
        [x, fstar, xtype, xlower, xupper] = freuroth("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 61 % DIXMAANK
        
        [x, fstar, xtype, xlower, xupper] = genhumps("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 62 % DIXMAANL
        
        [x, fstar, xtype, xlower, xupper] = gottfr("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 63 % Partial Perturbed Quadratic function
        
        [x, fstar, xtype, xlower, xupper] = gulf("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 64 % Broyden Tridiagonal function
        
        [x, fstar, xtype, xlower, xupper] = hairy("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 65 % Almost Perturbed Quadratic function
        
        [x, fstar, xtype, xlower, xupper] = heart6ls("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 66 % Perturbed Tridiagonal Quadratic function
        
        [x, fstar, xtype, xlower, xupper] = heart8ls("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 67 % Staircase 1 function
        
        [x, fstar, xtype, xlower, xupper] = helix("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 68 % Staircase 2 function
        
        [x, fstar, xtype, xlower, xupper] = hilbert("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 69 % LIARWHD function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himln3("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 70 % POWER function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himm25("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 71 % ENGVAL1 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himm27("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 72 % CRAGGLVY function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himm28("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 73 % EDENSCH function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himm29("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 74 % INDEF function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himm30("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 75 % CUBE function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himm32("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 76 % EXPLIN1 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = himm33("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 77 % EXPLIN2 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = hydc20ls("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 78 % ARGLINC function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = hypcir("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 79 % BDEXP function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = indef("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 80 % HARKERP2 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = integreq("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 81 % GENHUMPS function (CUTE) 
        
        [x, fstar, xtype, xlower, xupper] = jensmp("setup", n);
        
        if s==1
            x=10*x;
        end

    case 82 % MCCORMCK function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = kowosb("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 83 % NONSCOMP function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = lminsurf("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 84 % VARDIM function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = mancino("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 85 % QUARTC function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = mexhat("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 86 % Diagonal 6 function
        
        [x, fstar, xtype, xlower, xupper] = meyer3("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 87 % SINQUAD function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = morebv("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 88 % Extended DENSCHNB function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = msqrtals("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 89 % Extended DENSCHNF function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = msqrtbls("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 90 % LIARWHD function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = ncb20("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 91 % DIXON3DQ function (CUTE) 
        
        [x, fstar, xtype, xlower, xupper] = ncb20b("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 92 % COSINE function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = ncb20c("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 93 % SINE function
        
        [x, fstar, xtype, xlower, xupper] = nlminsurf("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 94 % BIGGSB1 function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = nondia("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 95 % Generalized Quartic function
        
        [x, fstar, xtype, xlower, xupper] = nondquar("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 96 % Diagonal 7 function
        
        [x, fstar, xtype, xlower, xupper] = nzf1("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 97 % Diagonal 8 function
        
        [x, fstar, xtype, xlower, xupper] = osbornea("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 98 % Full Hessian FH3 function
        
        [x, fstar, xtype, xlower, xupper] = osborneb("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 99 % SINCOS function
        
        [x, fstar, xtype, xlower, xupper] = penalty1("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 100 % Diagonal 9 function
        
        [x, fstar, xtype, xlower, xupper] = penalty2("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 101 % HIMMELBG function (CUTE)
        
        [x, fstar, xtype, xlower, xupper] = penalty3("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 102 % HIMMELH function (CUTE)   
        
        [x, fstar, xtype, xlower, xupper] = powellbs("setup", n);
        
        if s==1
            x=10*x;
        end

    case 103 % Extended Freudenstein & Roth function
        
        [x, fstar, xtype, xlower, xupper] = powellsg("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 104 % Extended Trigonometric function
        
        [x, fstar, xtype, xlower, xupper] = powellsq("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 105 % Extended Rosenbrock function
        
        [x, fstar, xtype, xlower, xupper] = powr("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 106 % Generalized Rosenbrock function
        
        [x, fstar, xtype, xlower, xupper] = recipe("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 107 % Extended White & Holst function
        
        [x, fstar, xtype, xlower, xupper] = rosenbr("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 108 % Extended Beale function
        
        [x, fstar, xtype, xlower, xupper] = s308("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 109 % Extended Penalty function
        
        [x, fstar, xtype, xlower, xupper] = schmvett("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 110 % Perturbed Quadratic function
        
        [x, fstar, xtype, xlower, xupper] = scosine("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 111 % Raydan 1 function
        
        [x, fstar, xtype, xlower, xupper] = scurly10("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 112 % Raydan 2 function   
        
        [x, fstar, xtype, xlower, xupper] = scurly20("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 113 % Diagonal 1 function
        
        [x, fstar, xtype, xlower, xupper] = scurly30("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 114 % Diagonal 2 function
        
        [x, fstar, xtype, xlower, xupper] = sensors("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 115 % Diagonal 3 function
        
        [x, fstar, xtype, xlower, xupper] = shydc20ls("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 116 % Hager function
        
        [x, fstar, xtype, xlower, xupper] = sisser("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 117 % Generalized Tridiagonal 1 function
        
        [x, fstar, xtype, xlower, xupper] = spmsqrt("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 118 % Extended Tridiagonal 1 function
        
        [x, fstar, xtype, xlower, xupper] = tcontact("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 119 % Extended TET function
        
        [x, fstar, xtype, xlower, xupper] = tlminsurf("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 120 % Generalized Tridiagonal 2 function
        
        [x, fstar, xtype, xlower, xupper] = tlminsurfx("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 121 % Diagonal 4 function
        
        [x, fstar, xtype, xlower, xupper] = tnlminsurf("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 122 % Diagonal 5 function   
        
        [x, fstar, xtype, xlower, xupper] = tnlminsurfx("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 123 % Extended Himmelblau function
        
        [x, fstar, xtype, xlower, xupper] = tquartic("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 124 % Generalized White & Holst function
        
        [x, fstar, xtype, xlower, xupper] = tridia("setup", n);
        
        if s==1
            x=10*x;
        end
    
    case 125 % Generalized PSC1 function
        
        [x, fstar, xtype, xlower, xupper] = trigger("setup", n);
        
        if s==1
            x=10*x; %CHANGED
        end
        
    case 126 % Extended PSC1 function
        
        [x, fstar, xtype, xlower, xupper] = vardim("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 127 % Extended Powell function
        
        [x, fstar, xtype, xlower, xupper] = vibrbeam("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 128 % Full Hessian FH1 function
        
        [x, fstar, xtype, xlower, xupper] = watson("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 129 % Full Hessian FH2 function
        
        [x, fstar, xtype, xlower, xupper] = wmsqrtals("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 130 % Extended BD1 function (Block Diagonal)
        
        [x, fstar, xtype, xlower, xupper] = wmsqrtbls("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 131 % Extended Maratos function
        
        [x, fstar, xtype, xlower, xupper] = woods("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 132 % Extended Cliff function 
        
        [x, fstar, xtype, xlower, xupper] = yfitu("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 133 % Perturbed quadratic diagonal function
        
        [x, fstar, xtype, xlower, xupper] = zangwil2("setup", n);
        
        if s==1
            x=10*x;
        end
        
    case 134 % Extended Wood function
        
        [x, ~, ~, xlower, xupper] = zangwil3("setup", n);
        
        if s==1
            x=10*x;
        end 
  end
