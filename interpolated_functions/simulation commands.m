// This is the model that allows for response functions with respect to both partner's preceding transfer and own previous transfer.

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
./main 150001 100 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 1 16 3 1 "output_disagg_interpol.txt" "output_agg_interpol.txt" "output_diff_interpol.txt" 101010
