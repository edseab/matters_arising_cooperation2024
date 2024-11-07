// sudo apt update
// sudo apt install build-essential gnustep gnustep-devel gnustep-make gnustep-base-common gnustep-base-runtime libgnustep-base-dev gobjc
// sudo apt-get install libgsl-dev
// . /usr/share/GNUstep/Makefiles/GNUstep.sh
// mkdir -p ~/standard_parameters
// ADD FILES TO THIS FOLDER
// cd ~/standard_parameters/

// gcc -c mt19937ar.c -o mt19937ar.o
gcc `gnustep-config --objc-flags` -c main.m -o main.o
gcc `gnustep-config --objc-flags` -c ContGroupAgent.m -o ContGroupAgent.o
gcc -o main main.o ContGroupAgent.o mt19937ar.o -lgnustep-base -lobjc -lgsl -lgslcblas -lm

// Normal model
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 0 0.0 "output_disagg.txt" "output_agg.txt" "output_diff.txt" 101010

// Categorical model
./main 15001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 1 0 0.0 "output_disagg_cat_full01.txt" "output_agg_cat_full01.txt" "output_diff_cat_full01.txt" 101010

// Model with max number of steps of 6 (i.e. max possible difference between parent and mutant of 6*0.025 = 0.15)
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 6 16 3 1 0 0 0.0 "output_disagg_range6.txt" "output_agg_range6.txt" "output_diff_range6.txt" 101010

// Model with max number of steps of 12 (i.e. max possible difference between parent and mutant of 12*0.025 = 0.3)
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 12 16 3 1 0 0 0.0 "output_disagg_range12.txt" "output_agg_range12.txt" "output_diff_range12.txt" 101010
// Model with max number of steps of 20 (i.e. max possible difference between parent and mutant of 20*0.025 = 0.5)
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 20 16 3 1 0 0 0.0 "output_disagg_range20.txt" "output_agg_range20.txt" "output_diff_range20.txt" 101010

// Model with lattice step size of 0.05
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.05 1 16 3 1 0 0 0.0 "output_disagg_step.05.txt" "output_agg_step.05.txt" "output_diff_step.05.txt" 101010

// Model with lattice step size of 0.1
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.1 1 16 3 1 0 0 0.0 "output_disagg_step.1.txt" "output_agg_step.1.txt" "output_diff_step.1.txt" 101010
// Model with lattice step size of 0.125
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.125 1 16 3 1 0 0 0.0 "output_disagg_step.125.txt" "output_agg_step.125.txt" "output_diff_step.125.txt" 101010
// Model with lattice step size of 0.2
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.2 1 16 3 1 0 0 0.0 "output_disagg_step.2.txt" "output_agg_step.2.txt" "output_diff_step.2.txt" 101010



// Model with Revenge Threshold
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.5 "output_disagg_Rev.txt" "output_agg_Rev.txt" "output_diff_Rev.txt" 101010
// Model with Revenge Threshold starting selfish
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 1 1 0 1 1.0 "output_disagg_Rev_selfish.txt" "output_agg_Rev_selfish.txt" "output_diff_Rev_selfish.txt" 101010
// Model with Revenge Thresholdstarting at 0 and starting selfish 
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 1 1 0 1 0.0 "output_disagg_Rev_selfish0.txt" "output_agg_Rev_selfish0.txt" "output_diff_Rev_selfish0.txt" 101010


// Fixed threshold models: FOR THIS NEED TO RECOMPILE so the mutation step is 0

// Model with Fixed Revenge Threshold of 0.3
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.3 "output_disagg_Rev0.3.txt" "output_agg_Rev0.3.txt" "output_diff_Rev0.3.txt" 101010

// Model with Fixed Revenge Threshold of 0.2
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.2 "output_disagg_Rev0.2.txt" "output_agg_Rev0.2.txt" "output_diff_Rev0.2.txt" 101010

// Model with Fixed Revenge Threshold of 0.1
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.1 "output_disagg_Rev0.1.txt" "output_agg_Rev0.1.txt" "output_diff_Rev0.1.txt" 101010

// Model with Fixed Revenge Threshold of 0.08
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.08 "output_disagg_Rev0.08.txt" "output_agg_Rev0.08.txt" "output_diff_Rev0.08.txt" 101010
// Model with Fixed Revenge Threshold of 0.12
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.12 "output_disagg_Rev0.12.txt" "output_agg_Rev0.12.txt" "output_diff_Rev0.12.txt" 101010
// Model with Fixed Revenge Threshold of 0.14
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.14 "output_disagg_Rev0.14.txt" "output_agg_Rev0.14.txt" "output_diff_Rev0.14.txt" 101010
// Model with Fixed Revenge Threshold of 0.16
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.16 "output_disagg_Rev0.16.txt" "output_agg_Rev0.16.txt" "output_diff_Rev0.16.txt" 101010
// Model with Fixed Revenge Threshold of 0.18
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 0.025 1 16 3 1 0 1 0.18 "output_disagg_Rev0.18.txt" "output_agg_Rev0.18.txt" "output_diff_Rev0.18.txt" 101010
