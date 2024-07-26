// sudo apt update
// sudo apt install build-essential gnustep gnustep-devel gnustep-make gnustep-base-common gnustep-base-runtime libgnustep-base-dev gobjc
// sudo apt-get install libgsl-dev
// . /usr/share/GNUstep/Makefiles/GNUstep.sh
// cd ./unbounded_parameters/


// gcc -c mt19937ar.c -o mt19937ar.o
gcc `gnustep-config --objc-flags` -c main.m -o main.o
gcc `gnustep-config --objc-flags` -c ContGroupAgent.m -o ContGroupAgent.o
gcc -o main main.o ContGroupAgent.o mt19937ar.o -lgnustep-base -lobjc -lgsl -lgslcblas -lm

// Unbounded parameters
./main 150001 200 2.0 100.0 0.5 100 0.0 0 999 999 0 0.02 1 16 3 1 0 0 "output_disagg_unbounded.txt" "output_agg_unbounded.txt" "output_diff_unbounded.txt" 101010

