function [f] = opm_oracle (x, n, p) 

    switch p

        case 1
            
            %[x_init, fstar, xtype, xlower, xupper] = argauss("setup", n);
            [f] = argauss("objf", x);

        case 2

            %[x_init, fstar, xtype, xlower, xupper] = arglina("setup", n);
            [f] = arglina("objf", x);

        case 3

            %[x_init, fstar, xtype, xlower, xupper] = arglinb("setup", n);
            [f] = arglinb("objf", x);

        case 4

            %[x_init, fstar, xtype, xlower, xupper] = arglinc("setup", n);
            [f] = arglinc("objf", x);

        case 5

            %[x_init, fstar, xtype, xlower, xupper] = argtrig("setup", n);
            [f] = argtrig("objf", x);

        case 6

            %[x_init, fstar, xtype, xlower, xupper] = arwhead("setup", n);
            [f] = arwhead("objf", x);

        case 7

            %[x_init, fstar, xtype, xlower, xupper] = bard("setup", n);
            [f] = bard("objf", x);

        case 8

            %[x_init, fstar, xtype, xlower, xupper] = bdarwhd("setup", n);
            [f] = bdarwhd("objf", x);

        case 9

            %[x_init, fstar, xtype, xlower, xupper] = beale("setup", n);
            [f] = beale("objf", x);

        case 10

            %[x_init, fstar, xtype, xlower, xupper] = biggs5("setup", n);
            [f] = biggs5("objf", x);

        case 11

            %[x_init, fstar, xtype, xlower, xupper] = biggs6("setup", n);
            [f] = biggs6("objf", x);

        case 12

            %[x_init, fstar, xtype, xlower, xupper] = booth("setup", n);
            [f] = booth("objf", x);

        case 13

            %[x_init, fstar, xtype, xlower, xupper] = box2("setup", n);
            [f] = box2("objf", x);

        case 14

            %[x_init, fstar, xtype, xlower, xupper] = box3("setup", n);
            [f] = box3("objf", x);

        case 15

            %[x_init, fstar, xtype, xlower, xupper] = bratu1d("setup", n);
            [f] = bratu1d("objf", x);

        case 16

            %[x_init, fstar, xtype, xlower, xupper] = brkmcc("setup", n);
            [f] = brkmcc("objf", x);

        case 17

            %[x_init, fstar, xtype, xlower, xupper] = brownal("setup", n);
            [f] = brownal("objf", x);

        case 18

            %[x_init, fstar, xtype, xlower, xupper] = brownbs("setup", n);
            [f] = brownbs("objf", x);

        case 19

            %[x_init, fstar, xtype, xlower, xupper] = brownden("setup", n);
            [f] = brownden("objf", x);

        case 20

            %[x_init, fstar, xtype, xlower, xupper] = broyden3d("setup", n);
            [f] = broyden3d("objf", x);

        case 21

            %[x_init, fstar, xtype, xlower, xupper] = broydenbd("setup", n);
            [f] = broydenbd("objf", x);

        case 22

            %[x_init, fstar, xtype, xlower, xupper] = chandheu("setup", n);
            [f] = chandheu("objf", x);

        case 23

            %[x_init, fstar, xtype, xlower, xupper] = chebyqad("setup", n);
            [f] = chebyqad("objf", x);

        case 24

            %[x_init, fstar, xtype, xlower, xupper] = cliff("setup", n);
            [f] = cliff("objf", x);

        case 25

            %[x_init, fstar, xtype, xlower, xupper] = clplatea("setup", n);
            [f] = clplatea("objf", x);

        case 26

            %[x_init, fstar, xtype, xlower, xupper] = clplateb("setup", n);
            [f] = clplateb("objf", x);

        case 27

            %[x_init, fstar, xtype, xlower, xupper] = clustr("setup", n);
            [f] = clustr("objf", x);

        case 28

            %[x_init, fstar, xtype, xlower, xupper] = cosine("setup", n);
            [f] = cosine("objf", x);

        case 29

            %[x_init, fstar, xtype, xlower, xupper] = crglvy("setup", n);
            [f] = crglvy("objf", x); 

        case 30

            %[x_init, fstar, xtype, xlower, xupper] = cube("setup", n);
            [f] = cube("objf", x);

        case 31

            %[x_init, fstar, xtype, xlower, xupper] = curly10("setup", n);
            [f] = curly10("objf", x);

        case 32

            %[x_init, fstar, xtype, xlower, xupper] = curly20("setup", n);
            [f] = curly20("objf", x);

        case 33

            %[x_init, fstar, xtype, xlower, xupper] = curly30("setup", n);
            [f] = curly30("objf", x);

        case 34

            %[x_init, fstar, xtype, xlower, xupper] = deconvu("setup", n);
            [f] = deconvu("objf", x);

        case 35

            %[x_init, fstar, xtype, xlower, xupper] = dixmaana("setup", n);
            [f] = dixmaana("objf", x);

        case 36

            %[x_init, fstar, xtype, xlower, xupper] = dixmaanb("setup", n);
            [f] = dixmaanb("objf", x);

        case 37

            %[x_init, fstar, xtype, xlower, xupper] = dixmaanc("setup", n);
            [f] = dixmaanc("objf", x);

        case 38

            %[x_init, fstar, xtype, xlower, xupper] = dixmaand("setup", n);
            [f] = dixmaand("objf", x);

        case 39

            %[x_init, fstar, xtype, xlower, xupper] = dixmaane("setup", n);
            [f] = dixmaane("objf", x);

        case 40

            %[x_init, fstar, xtype, xlower, xupper] = dixmaanf("setup", n);
            [f] = dixmaanf("objf", x);

        case 41

            %[x_init, fstar, xtype, xlower, xupper] = dixmaang("setup", n);
            [f] = dixmaang("objf", x);

        case 42

            %[x_init, fstar, xtype, xlower, xupper] = dixmaanh("setup", n);
            [f] = dixmaanh("objf", x);

        case 43

            %[x_init, fstar, xtype, xlower, xupper] = dixmaani("setup", n);
            [f] = dixmaani("objf", x);

        case 44

            %[x_init, fstar, xtype, xlower, xupper] = dixmaanj("setup", n);
            [f] = dixmaanj("objf", x);

        case 45

            %[x_init, fstar, xtype, xlower, xupper] = dixmaank("setup", n);
            [f] = dixmaank("objf", x);

        case 46

            %[x_init, fstar, xtype, xlower, xupper] = dixmaanl("setup", n);
            [f] = dixmaanl("objf", x);

        case 47

            %[x_init, fstar, xtype, xlower, xupper] = dixon("setup", n);
            [f] = dixon("objf", x);

        case 48

            %[x_init, fstar, xtype, xlower, xupper] = dqrtic("setup", n);
            [f] = dqrtic("objf", x);

        case 49

            %[x_init, fstar, xtype, xlower, xupper] = edensch("setup", n);
            [f] = edensch("objf", x);

        case 50

            %[x_init, fstar, xtype, xlower, xupper] = eg2("setup", n);
            [f] = eg2("objf", x);

        case 51

            %[x_init, fstar, xtype, xlower, xupper] = eg2s("setup", n);
            [f] = eg2s("objf", x);

        case 52

            %[x_init, fstar, xtype, xlower, xupper] = eigenals("setup", n);
            [f] = eigenals("objf", x);

        case 53

            %[x_init, fstar, xtype, xlower, xupper] = eigenbls("setup", n);
            [f] = eigenbls("objf", x);

        case 54

            %[x_init, fstar, xtype, xlower, xupper] = eigencls("setup", n);
            [f] = eigencls("objf", x);

        case 55

            %[x_init, fstar, xtype, xlower, xupper] = engval1("setup", n);
            [f] = engval1("objf", x);

        case 56

            %[x_init, fstar, xtype, xlower, xupper] = engval2("setup", n);
            [f] = engval2("objf", x);

        case 57

            %[x_init, fstar, xtype, xlower, xupper] = expfit("setup", n);
            [f] = expfit("objf", x);

        case 58

            %[x_init, fstar, xtype, xlower, xupper] = extrosnb("setup", n);
            [f] = extrosnb("objf", x);

        case 59

            %[x_init, fstar, xtype, xlower, xupper] = fminsurf("setup", n);
            [f] = fminsurf("objf", x);

        case 60

            %[x_init, fstar, xtype, xlower, xupper] = freuroth("setup", n);
            [f] = freuroth("objf", x);

        case 61

            %[x_init, fstar, xtype, xlower, xupper] = genhumps("setup", n);
            [f] = genhumps("objf", x);

        case 62

            %[x_init, fstar, xtype, xlower, xupper] = gottfr("setup", n);
            [f] = gottfr("objf", x);

        case 63

            %[x_init, fstar, xtype, xlower, xupper] = gulf("setup", n);
            [f] = gulf("objf", x);

        case 64

            %[x_init, fstar, xtype, xlower, xupper] = hairy("setup", n);
            [f] = hairy("objf", x);

        case 65

            %[x_init, fstar, xtype, xlower, xupper] = heart6ls("setup", n);
            [f] = heart6ls("objf", x);

        case 66

            %[x_init, fstar, xtype, xlower, xupper] = heart8ls("setup", n);
            [f] = heart8ls("objf", x);

        case 67

            %[x_init, fstar, xtype, xlower, xupper] = helix("setup", n);
            [f] = helix("objf", x);

        case 68

            %[x_init, fstar, xtype, xlower, xupper] = hilbert("setup", n);
            [f] = hilbert("objf", x);

        case 69

            %[x_init, fstar, xtype, xlower, xupper] = himln3("setup", n);
            [f] = himln3("objf", x);

        case 70

            %[x_init, fstar, xtype, xlower, xupper] = himm25("setup", n);
            [f] = himm25("objf", x);

        case 71

            %[x_init, fstar, xtype, xlower, xupper] = himm27("setup", n);
            [f] = himm27("objf", x);

        case 72

            %[x_init, fstar, xtype, xlower, xupper] = himm28("setup", n);
            [f] = himm28("objf", x);

        case 73

            %[x_init, fstar, xtype, xlower, xupper] = himm29("setup", n);
            [f] = himm29("objf", x);

        case 74

            %[x_init, fstar, xtype, xlower, xupper] = himm30("setup", n);
            [f] = himm30("objf", x);

        case 75

            %[x_init, fstar, xtype, xlower, xupper] = himm32("setup", n);
            [f] = himm32("objf", x);

        case 76

            %[x_init, fstar, xtype, xlower, xupper] = himm33("setup", n);
            [f] = himm33("objf", x);

        case 77

            %[x_init, fstar, xtype, xlower, xupper] = hydc20ls("setup", n);
            [f] = hydc20ls("objf", x);

        case 78

            %[x_init, fstar, xtype, xlower, xupper] = hypcir("setup", n);
            [f] = hypcir("objf", x);

        case 79

            %[x_init, fstar, xtype, xlower, xupper] = indef("setup", n);
            [f] = indef("objf", x);

        case 80

            %[x_init, fstar, xtype, xlower, xupper] = integreq("setup", n);
            [f] = integreq("objf", x);

        case 81

            %[x_init, fstar, xtype, xlower, xupper] = jensmp("setup", n);
            [f] = jensmp("objf", x);

        case 82

            %[x_init, fstar, xtype, xlower, xupper] = kowosb("setup", n);
            [f] = kowosb("objf", x);

        case 83

            %[x_init, fstar, xtype, xlower, xupper] = lminsurf("setup", n);
            [f] = lminsurf("objf", x);

        case 84

            %[x_init, fstar, xtype, xlower, xupper] = mancino("setup", n);
            [f] = mancino("objf", x);

        case 85

            %[x_init, fstar, xtype, xlower, xupper] = mexhat("setup", n);
            [f] = mexhat("objf", x);

        case 86

            %[x_init, fstar, xtype, xlower, xupper] = meyer3("setup", n);
            [f] = meyer3("objf", x);

        case 87

            %[x_init, fstar, xtype, xlower, xupper] = morebv("setup", n);
            [f] = morebv("objf", x);

        case 88

            %[x_init, fstar, xtype, xlower, xupper] = msqrtals("setup", n);
            [f] = msqrtals("objf", x);

        case 89

            %[x_init, fstar, xtype, xlower, xupper] = msqrtbls("setup", n);
            [f] = msqrtbls("objf", x);

        case 90

            %[x_init, fstar, xtype, xlower, xupper] = ncb20("setup", n);
            [f] = ncb20("objf", x);

        case 91

            %[x_init, fstar, xtype, xlower, xupper] = ncb20b("setup", n);
            [f] = ncb20b("objf", x);

        case 92

            %[x_init, fstar, xtype, xlower, xupper] = ncb20c("setup", n);
            [f] = ncb20c("objf", x);

        case 93

            %[x_init, fstar, xtype, xlower, xupper] = nlminsurf("setup", n);
            [f] = nlminsurf("objf", x);

        case 94

            %[x_init, fstar, xtype, xlower, xupper] = nondia("setup", n);
            [f] = nondia("objf", x);

        case 95

            %[x_init, fstar, xtype, xlower, xupper] = nondquar("setup", n);
            [f] = nondquar("objf", x);

        case 96

            %[x_init, fstar, xtype, xlower, xupper] = nzf1("setup", n);
            [f] = nzf1("objf", x);

        case 97

            %[x_init, fstar, xtype, xlower, xupper] = osbornea("setup", n);
            [f] = osbornea("objf", x);

        case 98

            %[x_init, fstar, xtype, xlower, xupper] = osborneb("setup", n);
            [f] = osborneb("objf", x);

        case 99

            %[x_init, fstar, xtype, xlower, xupper] = penalty1("setup", n);
            [f] = penalty1("objf", x);

        case 100

            %[x_init, fstar, xtype, xlower, xupper] = penalty2("setup", n);
            [f] = penalty2("objf", x);

        case 101

            %[x_init, fstar, xtype, xlower, xupper] = penalty3("setup", n);
            [f] = penalty3("objf", x);

        case 102

            %[x_init, fstar, xtype, xlower, xupper] = powellbs("setup", n);
            [f] = powellbs("objf", x);

        case 103

            %[x_init, fstar, xtype, xlower, xupper] = powellsg("setup", n);
            [f] = powellsg("objf", x);

        case 104

            %[x_init, fstar, xtype, xlower, xupper] = powellsq("setup", n);
            [f] = powellsq("objf", x);

        case 105

            %[x_init, fstar, xtype, xlower, xupper] = powr("setup", n);
            [f] = powr("objf", x);

        case 106

            %[x_init, fstar, xtype, xlower, xupper] = recipe("setup", n);
            [f] = recipe("objf", x);

        case 107

            %[x_init, fstar, xtype, xlower, xupper] = rosenbr("setup", n);
            [f] = rosenbr("objf", x);

        case 108

            %[x_init, fstar, xtype, xlower, xupper] = s308("setup", n);
            [f] = s308("objf", x);

        case 109

            %[x_init, fstar, xtype, xlower, xupper] = schmvett("setup", n);
            [f] = schmvett("objf", x);

        case 110

            %[x_init, fstar, xtype, xlower, xupper] = scosine("setup", n);
            [f] = scosine("objf", x);

        case 111

            %[x_init, fstar, xtype, xlower, xupper] = scurly10("setup", n);
            [f] = scurly10("objf", x);

        case 112

            %[x_init, fstar, xtype, xlower, xupper] = scurly20("setup", n);
            [f] = scurly20("objf", x);

        case 113

            %[x_init, fstar, xtype, xlower, xupper] = scurly30("setup", n);
            [f] = scurly30("objf", x);

        case 114

            %[x_init, fstar, xtype, xlower, xupper] = sensors("setup", n);
            [f] = sensors("objf", x);

        case 115

            %[x_init, fstar, xtype, xlower, xupper] = shydc20ls("setup", n);
            [f] = shydc20ls("objf", x);

        case 116

            %[x_init, fstar, xtype, xlower, xupper] = sisser("setup", n);
            [f] = sisser("objf", x);

        case 117

            %[x_init, fstar, xtype, xlower, xupper] = spmsqrt("setup", n);
            [f] = spmsqrt("objf", x);

        case 118

            %[x_init, fstar, xtype, xlower, xupper] = tcontact("setup", n);
            [f] = tcontact("objf", x);

        case 119

            %[x_init, fstar, xtype, xlower, xupper] = tlminsurf("setup", n);
            [f] = tlminsurf("objf", x);

        case 120

            %[x_init, fstar, xtype, xlower, xupper] = tlminsurfx("setup", n);
            [f] = tlminsurfx("objf", x);

        case 121

            %[x_init, fstar, xtype, xlower, xupper] = tnlminsurf("setup", n);
            [f] = tnlminsurf("objf", x);

        case 122

            %[x_init, fstar, xtype, xlower, xupper] = tnlminsurfx("setup", n);
            [f] = tnlminsurfx("objf", x);

        case 123

            %[x_init, fstar, xtype, xlower, xupper] = tquartic("setup", n);
            [f] = tquartic("objf", x);

        case 124

            %[x_init, fstar, xtype, xlower, xupper] = tridia("setup", n);
            [f] = tridia("objf", x);

        case 125

            %[x_init, fstar, xtype, xlower, xupper] = trigger("setup", n);
            [f] = trigger("objf", x);

        case 126

            %[x_init, fstar, xtype, xlower, xupper] = vardim("setup", n);
            [f] = vardim("objf", x);

        case 127

            %[x_init, fstar, xtype, xlower, xupper] = vibrbeam("setup", n);
            [f] = vibrbeam("objf", x);

        case 128

            %[x_init, fstar, xtype, xlower, xupper] = watson("setup", n);
            [f] = watson("objf", x);

        case 129

            %[x_init, fstar, xtype, xlower, xupper] = wmsqrtals("setup", n);
            [f] = wmsqrtals("objf", x);

        case 130

            %[x_init, fstar, xtype, xlower, xupper] = wmsqrtbls("setup", n);
            [f] = wmsqrtbls("objf", x);

        case 131

            %[x_init, fstar, xtype, xlower, xupper] = woods("setup", n);
            [f] = woods("objf", x);

        case 132

            %[x_init, fstar, xtype, xlower, xupper] = yfitu("setup", n);
            [f] = yfitu("objf", x);

        case 133

            %[x_init, fstar, xtype, xlower, xupper] = zangwil2("setup", n);
            [f] = zangwil2("objf", x);

        case 134

            %[x_init, ~, ~, xlower, xupper] = zangwil3("setup", n);
            [f] = zangwil3("objf", x);

    end