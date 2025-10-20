# TRFD-S: Trust-Region method based on Finite Differences for Smooth problems
## Purpose

TRFD-S solves smooth problems of the form

$$\min f(x), \quad$$ such that $\quad lb \leq x \leq ub$,

where $f:R^n \to R$, and $lb$ and $ub$ are vectors. TRFD-S only relies on the function values provided for $f$.

## Conditions of use

All publications using TRFD-S must cite:

D. Davar and G. N. Grapiglia: A Finite-Difference Trust-Region Method for Smooth Optimization

## How to use

To solve your own problem, you **must provide** the function Ffun that evaluates $f$. You can **optionally** modify the file _TRFD_S.m_ in the section _Algorithmic parameters_, where you may modify the default values used by TRFD-S.

## The command line 
 
You can run TRFD-S by typing:

[x_min, f_min, nf, stop, H] = TRFD_S (x0, Ffun, nfmax, lb, ub)

**Input**

- **x0** [n x 1]: initial point
- **Ffun**: function provided by the user that computes $f$
- **nfmax** [1 x 1]: maximum number of function evaluations allowed
- **lb** [n x 1]: lower bounds on $x$ ([ ] if no lower bound)
- **ub** [n x 1]: upper bounds on $x$ ([ ] if no upper bound)

**Output**

- **x_min** [n x 1]: vector yielding the lowest function value found by TRFD-S
- **f_min** [1 x 1]: lowest function value found by TRFD-S
- **nf** [1 x 1]: number of function evaluations used
- **stop** [1 x 1]: an integer identifying the reason TRFD stopped:
  - stop = 1: number of function evaluations bigger than or equal to nfmax
  - stop = 2: trust-region radius less than the tolerance
  - stop = -1: error in the execution of the subproblem
- **H** [nfmax x 1]: a vector such that H(i) is the smallest value of $f(x)$ obtained by TRFD-S after i function evaluations

## Examples

As a running-example, consider a basic function $f$ of 2 variables, defined by the function Ffun as

Ffun = @(x) 100*(x(2) - x(1)^2)^2 + (1 - x(1))^2

- For solving the problem min f(x) with x0 = [0.5; 0.5], nfmax = 300, lb = [0.1; 0.1], ub = [20; 20], type:

  - [x_min, f_min, nf, stop, H] = TRFD_S ([0.5; 0.5], Ffun, 300, [0.1; 0.1], [20; 20])

## Remark

The file TRSgep.m is part of the Manopt toolbox (https://github.com/NicolasBoumal/manopt).

## Contact

Dânâ Davar,  Geovani Nunes Grapiglia <br>
ICTEAM Institute, UCLouvain, Belgium <br>
dana.davar@uclouvain.be, geovani.grapiglia@uclouvain.be <br>

October 2025
