// This version of the model differs from the "standard parameters" version in 2 ways: 
// first, there are 2 additional parameters, revengeAlpha and revengeBeta, which govern the type 1 and type 2 mistakes in the revenge threshold, respectively.
// second, the categorical version of the model contains all possible strategies in the lattice.

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


// Revenge models with mistakes: set revengeAlpha and revengeBeta each to 0.1 in main.m and then compile
// Model with Revenge Threshold
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 1 16 3 1 0 1 0.5 "output_disagg_Rev_mistake0.1.txt" "output_agg_Rev_mistake0.1.txt" "output_diff_Rev_mistake0.1.txt" 101010
// Model with Revenge Threshold starting selfish
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 1 16 1 1 0 1 1.0 "output_disagg_Rev_selfish_mistake0.1.txt" "output_agg_Rev_selfish_mistake0.1.txt" "output_diff_Rev_selfish_mistake0.1.txt" 101010
// Model with Revenge Thresholdstarting at 0 and starting selfish 
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 1 16 1 1 0 1 0.0 "output_disagg_Rev_selfish0_mistake0.1.txt" "output_agg_Rev_selfish0_mistake0.1.txt" "output_diff_Rev_selfish0_mistake0.1.txt" 101010

// Categorical model with all possible functions: set revengeAlpha and revengeBeta to 0.0 in main.m then compile
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 1 16 3 1 1 0 0.0 "output_disagg_cat_full.txt" "output_agg_cat_full.txt" "output_diff_cat_full.txt" 101010
