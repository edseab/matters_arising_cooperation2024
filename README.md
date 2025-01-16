# Nature Matters Arising, Seabright et. al. 2024
Code for Nature Matters Arising submission, Seabright et.al 2024, arising from Efferson et. al., 2024 (https://www.nature.com/articles/s41586-024-07077-w)

This code is a fork of the following subfolder: https://github.com/cmefferson/superAdditiveCooperation/tree/main/threeDimSimFiles/withoutMistakes.

In addition to the 3 main code files, main.m, ContGroupAgent.h, and ContGroupAgent.m, there are instructions for how to compile and run all of the models included in the manuscript in the simulation commands files within each subfolder. Further, the Mersenne Twister code files for the random number generation are also included.

There are 4 versions of the model:
  - standard_parameters uses the same parametrisation as the original model but includes optional changes to the mutation kernel and the addition of an optional *tolerance threshold* parameter. Agents trigger a withdrawal from the cooperative game (transfering 0 for all future rounds) when their partner's transfer is smaller than their own preceding transfer by an absolute value greater than the tolerance threshold

  - standard_parameters_with_mistakes is the same as standard_parameters but allows for a false positive (alpha) mistake rate and a a false negative (beta) mistake rate when implementing the tolerance threshold. An alpha rate of 0.1 means that agents will falsely withdraw from cooperation - despite the tolerance threshold not having been triggered - 10% of the time. A beta rate of 0.1 means that agents will fail to withdraw despite the tolerance threshold being triggered 10% of the time.

  - unbounded_parameters uses a novel parameterisation for the strategy functions that doesn't set hard boundaries on the values of the parameters.

  - interpolated_functions is a version of the model not discussed in the manuscript, but raised as a possibility by the original paper authors during a discussion. It allows agents different response functions depending on their own preceding transfer. 

 For any questions or comments, please contact me at ed.seabright@gmail.com.
