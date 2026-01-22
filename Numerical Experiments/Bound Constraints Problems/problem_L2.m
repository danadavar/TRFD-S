function [nprob, n, m, factor, nfmax] = problem_L2 (i)

    switch i
        case 1
            nprob = 1;
            n = 9;
            m = 45;
            factor = 1;
            nfmax = (n+1)*100;

        case 2
            nprob = 1;
            n = 9;
            m = 45;
            factor = 10;
            nfmax = (n+1)*100;

        case 3
            nprob = 2;
            n = 7;
            m = 35;
            factor = 1;
            nfmax = (n+1)*100;

        case 4
            nprob = 2;
            n = 7;
            m = 35;
            factor = 10;
            nfmax = (n+1)*100;

        case 5
            nprob = 3;
            n = 7;
            m = 35;
            factor = 1;
            nfmax = (n+1)*100;

        case 6
            nprob = 3;
            n = 7;
            m = 35;
            factor = 10;
            nfmax = (n+1)*100;

        case 7
            nprob = 4;
            n = 2;
            m = 2;
            factor = 1;
            nfmax = (n+1)*100;

        case 8
            nprob = 4;
            n = 2;
            m = 2;
            factor = 10;
            nfmax = (n+1)*100;

         case 9
            nprob = 5;
            n = 3;
            m = 3;
            factor = 1;
            nfmax = (n+1)*100;

        case 10
            nprob = 5;
            n = 3;
            m = 3;
            factor = 10;
            nfmax = (n+1)*100;

        case 11
            nprob = 6;
            n = 4;
            m = 4;
            factor = 1;
            nfmax = (n+1)*100;

        case 12
            nprob = 6;
            n = 4;
            m = 4;
            factor = 10;
            nfmax = (n+1)*100;

        case 13
            nprob = 7;
            n = 2;
            m = 2;
            factor = 1;
            nfmax = (n+1)*100;

        case 14
            nprob = 7;
            n = 2;
            m = 2;
            factor = 10;
            nfmax = (n+1)*100;

        case 15
            nprob = 8;
            n = 3;
            m = 15;
            factor = 1;
            nfmax = (n+1)*100;

        case 16
            nprob = 8;
            n = 3;
            m = 15;
            factor = 10;
            nfmax = (n+1)*100;

        case 17
            nprob = 9;
            n = 4;
            m = 11;
            factor = 1;
            nfmax = (n+1)*100;

        case 18
            nprob = 10;
            n = 3;
            m = 16;
            factor = 1;
            nfmax = (n+1)*100;

        case 19
            nprob = 11;
            n = 6;
            m = 31;
            factor = 1;
            nfmax = (n+1)*100;

        case 20
            nprob = 11;
            n = 6;
            m = 31;
            factor = 10;
            nfmax = (n+1)*100;

        case 21
            nprob = 11;
            n = 9;
            m = 31;
            factor = 1;
            nfmax = (n+1)*100;

        case 22
            nprob = 11;
            n = 9;
            m = 31;
            factor = 10;
            nfmax = (n+1)*100;

        case 23
            nprob = 11;
            n = 12;
            m = 31;
            factor = 1;
            nfmax = (n+1)*100;

        case 24
            nprob = 11;
            n = 12;
            m = 31;
            factor = 10;
            nfmax = (n+1)*100;

        case 25
            nprob = 12;
            n = 3;
            m = 10;
            factor = 1;
            nfmax = (n+1)*100;

        case 26
            nprob = 13;
            n = 2;
            m = 10;
            factor = 1;
            nfmax = (n+1)*100;

        case 27
            nprob = 14;
            n = 4;
            m = 20;
            factor = 1;
            nfmax = (n+1)*100;

        case 28
            nprob = 14;
            n = 4;
            m = 20;
            factor = 10;
            nfmax = (n+1)*100;

        case 29
            nprob = 15;
            n = 6;
            m = 6;
            factor = 1;
            nfmax = (n+1)*100;

        case 30
            nprob = 15;
            n = 7;
            m = 7;
            factor = 1;
            nfmax = (n+1)*100;

        case 31
            nprob = 15;
            n = 8;
            m = 8;
            factor = 1;
            nfmax = (n+1)*100;

        case 32
            nprob = 15;
            n = 9;
            m = 9;
            factor = 1;
            nfmax = (n+1)*100;

        case 33
            nprob = 15;
            n = 10;
            m = 10;
            factor = 1;
            nfmax = (n+1)*100;

        case 34
            nprob = 15;
            n = 11;
            m = 11;
            factor = 1;
            nfmax = (n+1)*100;

        case 35
            nprob = 16;
            n = 10;
            m = 10;
            factor = 1;
            nfmax = (n+1)*100;

        case 36
            nprob = 17;
            n = 5;
            m = 33;
            factor = 1;
            nfmax = (n+1)*100;

        case 37
            nprob = 18;
            n = 11;
            m = 65;
            factor = 1;
            nfmax = (n+1)*100;

        case 38
            nprob = 18;
            n = 11;
            m = 65;
            factor = 10;
            nfmax = (n+1)*100;

        case 39
            nprob = 19;
            n = 8;
            m = 8;
            factor = 1;
            nfmax = (n+1)*100;

        case 40
            nprob = 19;
            n = 10;
            m = 12;
            factor = 1;
            nfmax = (n+1)*100;

        case 41
            nprob = 19;
            n = 11;
            m = 14;
            factor = 1;
            nfmax = (n+1)*100;

        case 42
            nprob = 19;
            n = 12;
            m = 16;
            factor = 1;
            nfmax = (n+1)*100;

        case 43
            nprob = 20;
            n = 5;
            m = 5;
            factor = 1;
            nfmax = (n+1)*100;

        case 44
            nprob = 20;
            n = 6;
            m = 6;
            factor = 1;
            nfmax = (n+1)*100;

        case 45
            nprob = 20;
            n = 8;
            m = 8;
            factor = 1;
            nfmax = (n+1)*100;

        case 46
            nprob = 21;
            n = 5;
            m = 5;
            factor = 1;
            nfmax = (n+1)*100;

        case 47
            nprob = 21;
            n = 5;
            m = 5;
            factor = 10;
            nfmax = (n+1)*100;

        case 48
            nprob = 21;
            n = 8;
            m = 8;
            factor = 1;
            nfmax = (n+1)*100;

        case 49
            nprob = 21;
            n = 10;
            m = 10;
            factor = 1;
            nfmax = (n+1)*100;

        case 50
            nprob = 21;
            n = 12;
            m = 12;
            factor = 1;
            nfmax = (n+1)*100;

        case 51
            nprob = 21;
            n = 12;
            m = 12;
            factor = 10;
            nfmax = (n+1)*100;

        case 52
            nprob = 22;
            n = 8;
            m = 8;
            factor = 1;
            nfmax = (n+1)*100;

        case 53
            nprob = 22;
            n = 8;
            m = 8;
            factor = 10;
            nfmax = (n+1)*100;

    end
end