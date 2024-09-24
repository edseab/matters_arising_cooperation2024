/* Copyright 2023, Charles Efferson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/

#import "ContGroupAgent.h"
#import "mt19937ar.h"
#import <stdlib.h>
#import <math.h> // NEW added by Seabright for various functions.


@implementation ContGroupAgent


// getters
-(double) initTransferIn
{
	return initTransferIn;
}

-(double) b00
{
	return b00;
}

-(double) b01
{
	return b01;
}

-(double) b10
{
	return b10;
}

-(double) b11
{
	return b11;
}

-(double) tempInitTransferIn
{
	return tempInitTransferIn;
}

// NEW Added by Seabright

-(double) tempb00
{
	return tempb00;
}

-(double) tempb01
{
	return tempb01;
}

-(double) tempb10
{
	return tempb10;
}

-(double) tempb11
{
	return tempb11;
}
//

-(double) initTransferOut
{
	return initTransferOut;
}

-(double) intLeftOut
{
	return intLeftOut;
}

-(double) intRightOut
{
	return intRightOut;
}


-(double) tempInitTransferOut
{
	return tempInitTransferOut;
}

-(double) tempIntLeftOut
{
	return tempIntLeftOut;
}

-(double) tempIntRightOut
{
	return tempIntRightOut;
}

-(int) partnerIn 
{
	return partnerIn;
}

-(double) partnerInitTransferIn
{
	return partnerInitTransferIn;
}

-(double) partnerb00
{
	return partnerb00;
}

-(double) partnerb01
{
	return partnerb01;
}

-(double) partnerb10
{
	return partnerb10;
}

-(double) partnerb11
{
	return partnerb11;
}

-(int) partnerOut
{
	return partnerOut;
}

-(double) partnerInitTransferOut
{
	return partnerInitTransferOut;
}

-(double) partnerIntLeftOut
{
	return partnerIntLeftOut;
}

-(double) partnerIntRightOut
{
	return partnerIntRightOut;
}

-(int) group
{
	return group;
}

-(int) outGroup
{
	return outGroup;
}

-(int) firstMoverIn
{
	return firstMoverIn;
}

-(int) firstMoverOut
{
	return firstMoverOut;
}

-(int) interactIn
{
	return interactIn;
}

-(int) numInteractionsIn
{
	return numInteractionsIn;
}

-(int) interactOut
{
	return interactOut;
}

-(int) numInteractionsOut
{
	return numInteractionsOut;
}

-(double) efficiencyFactor
{
	return efficiencyFactor;
}

-(double) fitnessIn
{
	return fitnessIn;
}

-(double) fitnessOut
{
	return fitnessOut;
}

-(double) exoFitness
{
	return exoFitness;
}

-(double) weightEndoFitness
{
	return weightEndoFitness;
}

-(double) fitness
{
	return fitness;
}

-(double) fitnessAsCumProp
{
	return fitnessAsCumProp;
}

-(double) tempFitnessIn
{
	return tempFitnessIn;
}

-(double) tempFitnessOut
{
	return tempFitnessOut;
}

-(double) tempExoFitness
{
	return tempExoFitness;
}

-(double) tempFitness
{
	return tempFitness;
}

-(double) probMutate
{
	return probMutate;
}

-(double) mutLatStepInitTransfer
{
	return mutLatStepInitTransfer;
}

-(double) mutLatStepIntercepts
{
	return mutLatStepIntercepts;
}

-(int) mutLatMaxStepIntercepts // NEW Added by Seabright
{
	return mutLatMaxStepIntercepts;
}

-(int) migrate
{
	return migrate;
}

-(int) groupMigrateFrom
{
	return groupMigrateFrom;
}

-(int) groupMigrateTo
{
	return groupMigrateTo;
}

// setters
-(void) setInitTransferIn: (double) initT_in
{
	initTransferIn = initT_in;
}

-(void) setb00: (double) b00_in
{
	b00 = b00_in;
}

-(void) setb01: (double) b01_in
{
	b01 = b01_in;
}

-(void) setb10: (double) b10_in
{
	b10 = b10_in;
}

-(void) setb11: (double) b11_in
{
	b11 = b11_in;
}

-(void) setTempInitTransferIn: (double) tInitT_in
{
	tempInitTransferIn = tInitT_in;
}

-(void) setTempb00: (double) tb00_in
{
	tempb00 = tb00_in;
}

-(void) setTempb01: (double) tb01_in
{
	tempb01 = tb01_in;
}

-(void) setTempb10: (double) tb10_in
{
	tempb10 = tb10_in;
}

-(void) setTempb11: (double) tb11_in
{
	tempb11 = tb11_in;
}

-(void) setInitTransferOut: (double) initT_out
{
	initTransferOut = initT_out;
}

-(void) setIntLeftOut: (double) intL_out
{
	intLeftOut = intL_out;
}

-(void) setIntRightOut: (double) intR_out
{
	intRightOut = intR_out;
}


-(void) setTempInitTransferOut: (double) tInitT_out
{
	tempInitTransferOut = tInitT_out;
}

-(void) setTempIntLeftOut: (double) tIntL_out
{
	tempIntLeftOut = tIntL_out;
}

-(void) setTempIntRightOut: (double) tIntR_out
{
	tempIntRightOut = tIntR_out;
}

-(void) setPartnerIn: (int) part_in;
{
	partnerIn = part_in;
}

-(void) setPartnerInitTransferIn: (double) partInitT_in
{
	partnerInitTransferIn = partInitT_in;
}

-(void) setPartnerb00: (double) partb00_in
{
	partnerb00 = partb00_in;
}

-(void) setPartnerb01: (double) partb01_in
{
	partnerb01 = partb01_in;
}

-(void) setPartnerb10: (double) partb10_in
{
	partnerb10 = partb10_in;
}

-(void) setPartnerb11: (double) partb11_in
{
	partnerb11 = partb11_in;
}

-(void) setPartnerOut: (int) part_out;
{
	partnerOut = part_out;
}

-(void) setPartnerInitTransferOut: (double) partInitT_out
{
	partnerInitTransferOut = partInitT_out;
}

-(void) setPartnerIntLeftOut: (double) partIntL_out
{
	partnerIntLeftOut = partIntL_out;
}

-(void) setPartnerIntRightOut: (double) partIntR_out
{
	partnerIntRightOut = partIntR_out;
}

-(void) setGroup: (int) gr
{
	group = gr;
}

-(void) setOutGroup: (int) gr_out
{
	outGroup = gr_out;
}

-(void) setFirstMoverIn: (int) firstM_in
{
	firstMoverIn = firstM_in;
}

-(void) setFirstMoverOut: (int) firstM_out
{
	firstMoverOut = firstM_out;
}

-(void) setInteractIn: (int) interact_in
{
	interactIn = interact_in;
}

-(void) setNumInteractionsIn: (int) numInteract_in
{
	numInteractionsIn = numInteract_in;
}

-(void) setInteractOut: (int) interact_out
{
	interactOut = interact_out;
}

-(void) setNumInteractionsOut: (int) numInteract_out
{
	numInteractionsOut = numInteract_out;
}

-(void) setEfficiencyFactor: (double) eff
{
	efficiencyFactor = eff;
}

-(void) setFitnessIn: (double) fit_in
{
	fitnessIn = fit_in;
}

-(void) setFitnessOut: (double) fit_out
{
	fitnessOut = fit_out;
}

-(void) setExoFitness: (double) exoFit
{
	exoFitness = exoFit;
}

-(void) setWeightEndoFitness: (double) wEndo
{
	weightEndoFitness = wEndo;
}

-(void) setFitness: (double) fit
{
	fitness = fit;
}

-(void) setFitnessAsCumProp: (double) fitCumProp
{
	fitnessAsCumProp = fitCumProp;
	if (fitnessAsCumProp > 1.0)
	{
		fitnessAsCumProp = 1.0;
	}
}

-(void) setTempFitnessIn: (double) tFitnessIn
{
	tempFitnessIn = tFitnessIn;
}

-(void) setTempFitnessOut: (double) tFitnessOut
{
	tempFitnessOut = tFitnessOut;
}

-(void) setTempExoFitness: (double) tExoFitness
{
	tempExoFitness = tExoFitness;
}

-(void) setTempFitness: (double) tFitness
{
	tempFitness = tFitness;
}

-(void) setProbMutate: (double) pMut
{
	probMutate = pMut;
}

-(void) setMutLatStepInitTransfer: (double) mStepInitT
{
	mutLatStepInitTransfer = mStepInitT;
}

-(void) setMutLatStepIntercepts: (double) mStepInt
{
	mutLatStepIntercepts = mStepInt;
}

-(void) setMutLatMaxStepIntercepts: (int) mMaxStepInt
{
	mutLatMaxStepIntercepts = mMaxStepInt;
}

int NumSteps; // Declaring the integer number of steps that a mutant will take from their parent


-(void) setMigrate: (int) mig
{
	migrate = mig;
}

-(void) setGroupMigrateFrom: (int) grMigFr
{
	groupMigrateFrom = grMigFr;
}

-(void) setGroupMigrateTo: (int) grMigTo
{
	groupMigrateTo = grMigTo;
}

// procedural methods
-(void) assignRandomInitTransferIn
{
	int numLatticeSteps = (double) 1.0 / mutLatStepInitTransfer + (double) 1.0;
	
	initTransferIn = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepInitTransfer;
	if (initTransferIn < 0.0)
	{
		initTransferIn = 0.0;
	}
	if (initTransferIn > 1.0)
	{
		initTransferIn = 1.0;
	}
}

-(void) assignRandomInterceptsIn
{
	int numLatticeSteps = (double) 1.0 / mutLatStepIntercepts + (double) 1.0;
	
	b00 = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (b00 < 0.0)
	{
		b00 = 0.0;
	}
	if (b00 > 1.0)
	{
		b00 = 1.0;
	}
	
	b01 = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (b01 < 0.0)
	{
		b01 = 0.0;
	}
	if (b01 > 1.0)
	{
		b01 = 1.0;
	} 

	b10 = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (b10 < 0.0)
	{
		b10 = 0.0;
	}
	if (b10 > 1.0)
	{
		b10 = 1.0;
	}
	
	b11 = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (b11 < 0.0)
	{
		b11 = 0.0;
	}
	if (b11 > 1.0)
	{
		b11 = 1.0;
	}
}

-(void) assignRandomInitTransferOut
{
	int numLatticeSteps = (double) 1.0 / mutLatStepInitTransfer + (double) 1.0;
	
	initTransferOut = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepInitTransfer;
	if (initTransferOut < 0.0)
	{
		initTransferOut = 0.0;
	}
	if (initTransferOut > 1.0)
	{
		initTransferOut = 1.0;
	}
}

-(void) assignRandomInterceptsOut
{
	int numLatticeSteps = (double) 1.0 / mutLatStepIntercepts + (double) 1.0;
	
	intLeftOut = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (intLeftOut < 0.0)
	{
		intLeftOut = 0.0;
	}
	if (intLeftOut > 1.0)
	{
		intLeftOut = 1.0;
	}
	
	intRightOut = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (intRightOut < 0.0)
	{
		intRightOut = 0.0;
	}
	if (intRightOut > 1.0)
	{
		intRightOut = 1.0;
	} 
}
	
-(void) calculateFitnessIn // New by Seabright: player transfer calculated by bilinear interpolation from partner's preceding transfer AND focal's previous transfer 
// General function: f(x1,x2)= (1−x1​)*(1−x2​)*b00​ ​+ (1−x1​)*x2​*b01​ + x1*​(1−x2​)*b10 + x1*​x2*​b11​ where x1 is previous focal transfer, x2 is preceding partner transfer
{
	if (numInteractionsIn == 1) // Players behave as if their own previous transfer before their partner's initial transfer is 0
	{
		if (firstMoverIn == 1)
		{
			fitnessIn = (double) 1.0 - initTransferIn + efficiencyFactor * ((1-initTransferIn)*partnerb00 + initTransferIn*partnerb01);
		}
		else 
		{
			fitnessIn = (double) 1.0 - ((1-partnerInitTransferIn)*b00 + partnerInitTransferIn*b01) + efficiencyFactor * partnerInitTransferIn;
		}
	}
	else if (numInteractionsIn > 1)
	{
		double focalBeh;
		double partnerBeh;
		int n;
		
		if (firstMoverIn == 1)
		{
			focalBeh = initTransferIn;
			partnerBeh = (1-focalBeh)*partnerb00 + focalBeh*partnerb01;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
		
			for (n = 1; n < numInteractionsIn; n++)
			{
				focalBeh = (1-focalBeh)*(1-partnerBeh)*b00 + (1-focalBeh)*partnerBeh*b01 + focalBeh*(1-partnerBeh)*b10 + focalBeh*partnerBeh*b11;
				partnerBeh = (1-partnerBeh)*(1-focalBeh)*partnerb00 + (1-partnerBeh)*focalBeh*partnerb01 + partnerBeh*(1-focalBeh)*partnerb10 + partnerBeh*focalBeh*partnerb11;
				fitnessIn += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
		else
		{
			partnerBeh = partnerInitTransferIn;
			focalBeh = (1-partnerBeh)*b00 + partnerBeh*b01;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;

			for (n = 1; n < numInteractionsIn; n++)
			{
				partnerBeh = (1-partnerBeh)*(1-focalBeh)*partnerb00 + (1-partnerBeh)*focalBeh*partnerb01 + partnerBeh*(1-focalBeh)*partnerb10 + partnerBeh*focalBeh*partnerb11;
				focalBeh = (1-focalBeh)*(1-partnerBeh)*b00 + (1-focalBeh)*partnerBeh*b01 + focalBeh*(1-partnerBeh)*b10 + focalBeh*partnerBeh*b11;
				fitnessIn += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
	}
	else
	{
		fitnessIn = 1.0; // Retain endowment if no in-group interaction occurs.
	}
}




-(void) calculateFitnessOut
{
	if (numInteractionsOut == 1)
	{
		if (firstMoverOut == 1)
		{
			fitnessOut = (double) 1.0 - initTransferOut + efficiencyFactor * (partnerIntLeftOut + (partnerIntRightOut - partnerIntLeftOut) * initTransferOut);
		}
		else 
		{
			fitnessOut = (double) 1.0 - (intLeftOut + (intRightOut - intLeftOut) * partnerInitTransferOut) + efficiencyFactor * partnerInitTransferOut;
		}
	}
	else if (numInteractionsOut > 1)
	{
		double focalBeh;
		double partnerBeh;
		int n;
		
		if (firstMoverOut == 1)
		{
			focalBeh = initTransferOut;
			partnerBeh = partnerIntLeftOut + (partnerIntRightOut - partnerIntLeftOut) * focalBeh;
			fitnessOut = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
		
			for (n = 1; n < numInteractionsOut; n++)
			{
				focalBeh = intLeftOut + (intRightOut - intLeftOut) * partnerBeh;
				partnerBeh = partnerIntLeftOut + (partnerIntRightOut - partnerIntLeftOut) * focalBeh;
				fitnessOut += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
		else
		{
			partnerBeh = partnerInitTransferOut;
			focalBeh = intLeftOut + (intRightOut - intLeftOut) * partnerBeh;
			fitnessOut = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;

			for (n = 1; n < numInteractionsOut; n++)
			{
				partnerBeh = partnerIntLeftOut + (partnerIntRightOut - partnerIntLeftOut) * focalBeh;
				focalBeh = intLeftOut + (intRightOut - intLeftOut) * partnerBeh;
				fitnessOut += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
	}
	else
	{
		fitnessOut = 1.0; // Retain endowment if no out-group interaction occurs.
	}
}

-(void) calculateFitness
{
	fitness = ((double) 1.0 - weightEndoFitness) * exoFitness + weightEndoFitness * (fitnessIn + fitnessOut);		
}

-(void) updatePhenotypeFromTempIn
{
	initTransferIn = tempInitTransferIn;
	b00 = tempb00; // NEW Added by Seabright
	b01 = tempb01; // NEW Added by Seabright
	b10 = tempb10; // NEW Added by Seabright
	b11 = tempb11; // NEW Added by Seabright
}

-(void) updatePhenotypeFromTempOut
{
	initTransferOut = tempInitTransferOut;
	intLeftOut = tempIntLeftOut;
	intRightOut = tempIntRightOut;
}

-(void) updateFitnessValuesFromTemp
{
	fitnessIn = tempFitnessIn;
	fitnessOut = tempFitnessOut;
	fitness = tempFitness;
}

-(void) implementMutationsIn // NEW Added by Seabright: increased possible number of simultaneous mutation steps
{
	// initTransferIn
	if (initTransferIn <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			initTransferIn = mutLatStepInitTransfer;
		}
	}
	else if (initTransferIn >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			initTransferIn = (double) 1.0 - mutLatStepInitTransfer;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				initTransferIn += mutLatStepInitTransfer;
				if (initTransferIn > 1.0)
				{
					initTransferIn = 1.0;
				}
			}
			else
			{
				initTransferIn -= mutLatStepInitTransfer;
				if (initTransferIn < 0.0)
				{
					initTransferIn = 0.0;
				}
			}
		}
	}
	
	// b00
	if (b00 <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b00 = mutLatStepIntercepts*NumSteps;
		}
	}
	else if (b00 >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b00 = (double) 1.0 - mutLatStepIntercepts*NumSteps;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation

			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				
				b00 += mutLatStepIntercepts*NumSteps;
				if (b00 > 1.0)
				{
					b00 = 1.0;
				}
			}
			else
			{
				b00 -= mutLatStepIntercepts*NumSteps;
				if (b00 < 0.0)
				{
					b00 = 0.0;
				}
			}
		}
	}

	// b01
	if (b01 <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b01 = mutLatStepIntercepts*NumSteps;
		}
	}
	else if (b01 >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b01 = (double) 1.0 - mutLatStepIntercepts*NumSteps;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation

			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				b01 += mutLatStepIntercepts*NumSteps;
				if (b01 > 1.0)
				{
					b01 = 1.0;
				}
			}
			else
			{
				b01 -= mutLatStepIntercepts*NumSteps;
				if (b01 < 0.0)
				{
					b01  = 0.0;
				}
			}
		}
	}

	// b10
	if (b10 <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b10 = mutLatStepIntercepts*NumSteps;
		}
	}
	else if (b10 >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b10 = (double) 1.0 - mutLatStepIntercepts*NumSteps;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation

			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				b10 += mutLatStepIntercepts*NumSteps;
				if (b10 > 1.0)
				{
					b10 = 1.0;
				}
			}
			else
			{
				b10 -= mutLatStepIntercepts*NumSteps;
				if (b10 < 0.0)
				{
					b10 = 0.0;
				}
			}
		}
	}

	// b11
	if (b11 <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b11 = mutLatStepIntercepts*NumSteps;
		}
	}
	else if (b11 >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			b11 = (double) 1.0 - mutLatStepIntercepts*NumSteps;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation

			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				b11 += mutLatStepIntercepts*NumSteps;
				if (b11 > 1.0)
				{
					b11 = 1.0;
				}
			}
			else
			{
				b11 -= mutLatStepIntercepts*NumSteps;
				if (b11 < 0.0)
				{
					b11 = 0.0;
				}
				}
	}}
}

-(void) implementMutationsOut
{
	// initTransferOut
	if (initTransferOut <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			initTransferOut = mutLatStepInitTransfer;
		}
	}
	else if (initTransferOut >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			initTransferOut = (double) 1.0 - mutLatStepInitTransfer;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				initTransferOut += mutLatStepInitTransfer;
				if (initTransferOut > 1.0)
				{
					initTransferOut = 1.0;
				}
			}
			else
			{
				initTransferOut -= mutLatStepInitTransfer;
				if (initTransferOut < 0.0)
				{
					initTransferOut = 0.0;
				}
			}
		}
	}
	
	// intLeftOut
	if (intLeftOut <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			intLeftOut = mutLatStepIntercepts;
		}
	}
	else if (intLeftOut >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			intLeftOut = (double) 1.0 - mutLatStepIntercepts;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				intLeftOut += mutLatStepIntercepts;
				if (intLeftOut > 1.0)
				{
					intLeftOut = 1.0;
				}
			}
			else
			{
				intLeftOut -= mutLatStepIntercepts;
				if (intLeftOut < 0.0)
				{
					intLeftOut = 0.0;
				}
			}
		}
	}

	// intRightOut
	if (intRightOut <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			intRightOut = mutLatStepIntercepts;
		}
	}
	else if (intRightOut >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			intRightOut = (double) 1.0 - mutLatStepIntercepts;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				intRightOut += mutLatStepIntercepts;
				if (intRightOut > 1.0)
				{
					intRightOut = 1.0;
				}
			}
			else
			{
				intRightOut -= mutLatStepIntercepts;
				if (intRightOut < 0.0)
				{
					intRightOut  = 0.0;
				}
			}
		}
	}
}

@end