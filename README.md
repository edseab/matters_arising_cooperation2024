# Nature Matters Arising, Seabright et. al. 2024
Code for Nature Matters Arising submission, Seabright et.al 2024, arising from Efferson et. al., 2024 (https://www.nature.com/articles/s41586-024-07077-w)

This code is a fork of the following subfolder: https://github.com/cmefferson/superAdditiveCooperation/tree/main/threeDimSimFiles/withoutMistakes.

In addition to the 3 main code files, main.m, ContGroupAgent.h, and ContGroupAgent.m, there are instructions for how to compile and run all of the models included in the manuscript in the simulation commands file. Further, the Mersenne Twister code files for the random number generation are also included.

There are 2 versions of the model:
  - One uses the same parametrisation as the original model but includes optional changes to the mutation kernel and the addition of an optional *tolerance threshold* parameter.
  - The other uses a novel (unbounded) parameterisation for the strategy functions.

 For any questions or comments, please contact me at ed.seabright@gmail.com.
