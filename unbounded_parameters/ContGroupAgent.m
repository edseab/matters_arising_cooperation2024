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

-(double) intLeftIn
{
	return intLeftIn;
}

-(double) intSlopeIn
{
	return intSlopeIn;
}

-(double) tempInitTransferIn
{
	return tempInitTransferIn;
}

-(double) tempIntLeftIn
{
	return tempIntLeftIn;
}

-(double) tempintSlopeIn
{
	return tempintSlopeIn;
}

// NEW Added by Seabright
-(double) tempRevengeThresh
{
	return tempRevengeThresh;
}

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

-(double) RevengeThresh   // NEW Added by Seabright
{
	return RevengeThresh;
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

-(double) partnerIntLeftIn
{
	return partnerIntLeftIn;
}

-(double) partnerintSlopeIn
{
	return partnerintSlopeIn;
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

-(double) PartnerRevengeThresh   // NEW Added by Seabright
{
	return PartnerRevengeThresh;
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

-(int) Revenge // NEW Added by Seabright
{
	return Revenge;
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

-(double) mutLatStepRevengeThresh
{
	return mutLatStepRevengeThresh;
}

// setters
-(void) setInitTransferIn: (double) initT_in
{
	initTransferIn = initT_in;
}

-(void) setIntLeftIn: (double) intL_in
{
	intLeftIn = intL_in;
}

-(void) setintSlopeIn: (double) intR_in
{
	intSlopeIn = intR_in;
}

-(void) setTempInitTransferIn: (double) tInitT_in
{
	tempInitTransferIn = tInitT_in;
}

-(void) setTempIntLeftIn: (double) tIntL_in
{
	tempIntLeftIn = tIntL_in;
}

-(void) setTempintSlopeIn: (double) tIntR_in
{
	tempintSlopeIn = tIntR_in;
}

// NEW Added by Seabright
-(void) setTempRevengeThresh: (double) tRev
{
	tempRevengeThresh = tRev;
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

-(void) setRevengeThresh: (double) Rev                 // NEW Added by Seabright
{
	RevengeThresh = Rev;
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

-(void) setPartnerIntLeftIn: (double) partIntL_in
{
	partnerIntLeftIn = partIntL_in;
}

-(void) setPartnerintSlopeIn: (double) partIntR_in
{
	partnerintSlopeIn = partIntR_in;
}


-(void) setPartnerRevengeThresh: (double) partRev                 // NEW Added by Seabright
{
	PartnerRevengeThresh = partRev;
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

// NEW Added by Seabright
-(void) setRevenge: (int) Rvg
{
	Revenge = Rvg;
}


-(void) setmutLatStepRevengeThresh: (double) mStepRev
{
	mutLatStepRevengeThresh = mStepRev;
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
	
	intLeftIn = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (intLeftIn < -10.0)
	{
		intLeftIn = -10.0;
	}
	if (intLeftIn > 10.0)
	{
		intLeftIn = 10.0;
	}
	
	intSlopeIn = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (intSlopeIn < -10.0)
	{
		intSlopeIn = -10.0;
	}
	if (intSlopeIn > 10.0)
	{
		intSlopeIn = 10.0;
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
	
-(void) calculateFitnessIn 
{
	
	double focalBeh;
	double partnerBeh;
	int n;

	if (numInteractionsIn == 1) 
	{
		if (firstMoverIn == 1)
		{
			partnerBeh = fmax(fmin((partnerIntLeftIn + partnerintSlopeIn* initTransferIn), 1.0), 0.0);
			fitnessIn = (double) 1.0 - initTransferIn + efficiencyFactor * partnerBeh;
		}
		else 
		{
			focalBeh = fmax(fmin((intLeftIn + intSlopeIn* partnerInitTransferIn), 1.0), 0.0);
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerInitTransferIn;
		}   
	}
	else if (numInteractionsIn > 1)
	{
		
		if (firstMoverIn == 1)
		{
			focalBeh = initTransferIn;
			partnerBeh = fmax(fmin((partnerIntLeftIn + partnerintSlopeIn* focalBeh), 1.0), 0.0);
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
		
			for (n = 1; n < numInteractionsIn; n++)
			{
				focalBeh = fmax(fmin((intLeftIn + intSlopeIn* partnerBeh), 1.0), 0.0);
				partnerBeh = fmax(fmin((partnerIntLeftIn + partnerintSlopeIn* focalBeh), 1.0), 0.0);
				fitnessIn += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
		else
		{
			partnerBeh = partnerInitTransferIn;
			focalBeh = fmax(fmin((intLeftIn + intSlopeIn* partnerBeh), 1.0), 0.0);
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;

			for (n = 1; n < numInteractionsIn; n++)
			{
				partnerBeh = fmax(fmin((partnerIntLeftIn + partnerintSlopeIn* focalBeh), 1.0), 0.0);
				focalBeh = fmax(fmin((intLeftIn + intSlopeIn* partnerBeh), 1.0), 0.0);
				fitnessIn += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
	}
	else
	{
		fitnessIn = 1.0; // Retain endowment if no in-group interaction occurs.
	}
}

-(void) calculateFitnessInRevenge // NEW by Seabright: changed the transfers to include the revenge.
{
	if (numInteractionsIn == 1) // No changes here because Revenge Threshold is irrelevant to 1st interaction
	{
		if (firstMoverIn == 1)
		{
			fitnessIn = (double) 1.0 - initTransferIn + efficiencyFactor * (partnerIntLeftIn + (partnerintSlopeIn - partnerIntLeftIn) * initTransferIn);
		}
		else 
		{
			fitnessIn = (double) 1.0 - (intLeftIn + (intSlopeIn - intLeftIn) * partnerInitTransferIn) + efficiencyFactor * partnerInitTransferIn;
		}
	}
	else if (numInteractionsIn > 1)
	{
		double focalBeh;
		double partnerBeh;
		int n;
		int punishment = 0; // NEW Added By Seabright
		int partner_punishment = 0; // NEW Added By Seabright
		
		if (firstMoverIn == 1)
		{
			focalBeh = initTransferIn;
			partnerBeh = partnerIntLeftIn + (partnerintSlopeIn - partnerIntLeftIn) * focalBeh;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
		
			for (n = 1; n < numInteractionsIn; n++)
			{
				if(punishment == 0)
				{
					focalBeh = intLeftIn + (intSlopeIn - intLeftIn) * partnerBeh; 

					if (focalBeh - partnerBeh < - PartnerRevengeThresh)
					{
						partner_punishment = 1;
					}
				}
				else
				{
					focalBeh = 0;
				}

				if (partner_punishment == 0)
				{
					partnerBeh = partnerIntLeftIn + (partnerintSlopeIn - partnerIntLeftIn) * focalBeh;

					if (partnerBeh - focalBeh  < - RevengeThresh)
					{
						punishment = 1;
					}
				}
				else
				{
					partnerBeh = 0;
				}

				fitnessIn += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
		else
		{
			partnerBeh = partnerInitTransferIn;
			focalBeh = intLeftIn + (intSlopeIn - intLeftIn) * partnerBeh;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;

			for (n = 1; n < numInteractionsIn; n++)
			{
				if (partner_punishment == 0)
				{
					partnerBeh = partnerIntLeftIn + (partnerintSlopeIn - partnerIntLeftIn) * focalBeh; 

					if (partnerBeh - focalBeh  < - RevengeThresh)
					{
						punishment = 1;
					}

				}
				else
				{
					partnerBeh = 0;
				}
				
				if(punishment == 0)
				{
					focalBeh = intLeftIn + (intSlopeIn - intLeftIn) * partnerBeh;

					if (focalBeh - partnerBeh < - PartnerRevengeThresh)
					{
						partner_punishment = 1;
					}
				}
				else
				{
					focalBeh = 0;
				}
				 
				
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
	intLeftIn = tempIntLeftIn;
	intSlopeIn = tempintSlopeIn;
	RevengeThresh = tempRevengeThresh;  // NEW Added by Seabright
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
	
	// intLeftIn
	if (intLeftIn <= -10.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intLeftIn = (double) -10.0 + mutLatStepIntercepts*NumSteps;
		}
	}
	else if (intLeftIn >= 10.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intLeftIn = (double) 10.0 - mutLatStepIntercepts*NumSteps;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation

			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				
				intLeftIn += mutLatStepIntercepts*NumSteps;
				if (intLeftIn > 10.0)
				{
					intLeftIn = 10.0;
				}
			}
			else
			{
				intLeftIn -= mutLatStepIntercepts*NumSteps;
				if (intLeftIn < -10.0)
				{
					intLeftIn = -10.0;
				}
			}
		}
	}

	// intSlopeIn
	if (intSlopeIn <= -10.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intSlopeIn = (double) -10.0 + mutLatStepIntercepts*NumSteps;
		}
	}
	else if (intSlopeIn >= 10.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intSlopeIn = (double) 10.0 - mutLatStepIntercepts*NumSteps;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation

			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				intSlopeIn += mutLatStepIntercepts*NumSteps;
				if (intSlopeIn > 10.0)
				{
					intSlopeIn = 10.0;
				}
			}
			else
			{
				intSlopeIn -= mutLatStepIntercepts*NumSteps;
				if (intSlopeIn < -10.0)
				{
					intSlopeIn  = -10.0;
				}
			}
		}
	}

	// Revenge Threshold
	if (Revenge == 0)
	{
		RevengeThresh = 0.0;
	}
	else if (RevengeThresh <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			RevengeThresh = mutLatStepRevengeThresh;
		}
	}
	else if (RevengeThresh >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			RevengeThresh = (double) 1.0 - mutLatStepRevengeThresh;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				RevengeThresh += mutLatStepRevengeThresh;
				if (RevengeThresh > 1.0)
				{
					RevengeThresh = 1.0;
				}
			}
			else
			{
				RevengeThresh -= mutLatStepRevengeThresh;
				if (RevengeThresh < 0.0)
				{
					RevengeThresh = 0.0;
				}
			}
		}
	}

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