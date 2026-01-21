All experiments reported in the paper were performed with MATLAB R2023a on a PC with microprocessor 13-th Gen Intel(R) Core(TM) i5-1345U 1.60 GHz and 32 GB of RAM memory.

%%%%%%%

To obtain Data Profiles for Unconstrained Problems on the OPM collection, go to the folder
"Unconstrained Problems" and run the code "run_data_profiles_unconstrained"

Then, inside it, edit the "..." by the location of the folder "Numerical Experiments":
addpath(genpath("...\Numerical Experiments\Methods"));          
addpath(genpath("...\Numerical Experiments\Unconstrained Problems\OPM 134 problems"));

%%%%%%%

To obtain plots for the Calibration of an ODE Model, go to the folder
"Calibration of an ODE Model" and run the code "run_calibration"

Then, inside it, edit the "..." by the location of the folder "Numerical Experiments":
addpath(genpath("...\Numerical Experiments\Methods"));
