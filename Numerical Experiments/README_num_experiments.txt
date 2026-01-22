All experiments reported in the paper were performed with MATLAB R2023a.

%%%%%%%

To obtain Data Profiles for Unconstrained Problems on the OPM collection, go to the folder
"Unconstrained Problems" and open the code "run_data_profiles_unconstrained".

Then, inside it, edit the "..." by the location of the folder "Numerical Experiments":
addpath(genpath("...\Numerical Experiments\Methods"));          
addpath(genpath("...\Numerical Experiments\Unconstrained Problems\OPM 134 problems"));

Finally, run the code "run_data_profiles_unconstrained".

%%%%%%%

To obtain Data Profiles for Bound Constraints Problems on the Moré-Wild collection, NOMAD
must be installed. To that end, the user should follow the instructions on the link https://github.com/bbopt/nomad/issues/128,
which is mentioned on https://nomad-4-user-guide.readthedocs.io/en/latest/Appendix.html#guide-matlab-mex.
The instructions should be followed by using the folder "nomad-v.4.4.0", which is already
provided in "...\Numerical Experiments\Methods\NOMAD".

Once the instructions have been followed, go to the folder "Bound Constraints Problems" and
open the code "run_data_profiles_bound_constraints".    

Then, inside it, edit the "..." by the location of the folder "Numerical Experiments":
addpath(genpath("...\Numerical Experiments\Methods"));   

Finally, run the code "run_data_profiles_bound_constraints".


If you face some issue with NOMAD, you can obtain Data Profiles for Bound Constraints Problems
WITHOUT NOMAD on the Moré-Wild collection. Go to the folder "Bound Constraints Problems" and
open the code "run_data_profiles_bound_constraints_without_NOMAD".

Then, inside it, edit the "..." by the location of the folder "Numerical Experiments":
addpath(genpath("...\Numerical Experiments\Methods"));

Finally, run the code "run_data_profiles_bound_constraints_without_NOMAD".

%%%%%%%

To obtain plots for the Calibration of an ODE Model, go to the folder
"Calibration of an ODE Model" and open the code "run_calibration".

Then, inside it, edit the "..." by the location of the folder "Numerical Experiments":
addpath(genpath("...\Numerical Experiments\Methods"));

Finally, run the code "run_calibration".
