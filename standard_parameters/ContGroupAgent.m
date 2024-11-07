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

-(double) intRightIn
{
	return intRightIn;
}

-(double) tempInitTransferIn
{
	return tempInitTransferIn;
}

-(double) tempIntLeftIn
{
	return tempIntLeftIn;
}

-(double) tempIntRightIn
{
	return tempIntRightIn;
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

-(double) partnerIntRightIn
{
	return partnerIntRightIn;
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

-(void) setIntRightIn: (double) intR_in
{
	intRightIn = intR_in;
}

-(void) setTempInitTransferIn: (double) tInitT_in
{
	tempInitTransferIn = tInitT_in;
}

-(void) setTempIntLeftIn: (double) tIntL_in
{
	tempIntLeftIn = tIntL_in;
}

-(void) setTempIntRightIn: (double) tIntR_in
{
	tempIntRightIn = tIntR_in;
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

-(void) setPartnerIntRightIn: (double) partIntR_in
{
	partnerIntRightIn = partIntR_in;
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

// Strategies

// Perfect reciprocity
double strat010[] = {0.0,1.0};
// Unconditional strategies
double strat1010[] = {1.0,1.0};
double strat99[] = {0.9,0.9};
double strat88[] = {0.8,0.8};
double strat77[] = {0.7,0.7};
double strat66[] = {0.6,0.6};
double strat55[] = {0.5,0.5};
double strat44[] = {0.4,0.4};
double strat33[] = {0.3,0.3};
double strat22[] = {0.2,0.2};
double strat11[] = {0.1,0.1};
double strat00[] = {0.0,0.0};
// Escalating strategies
double strat110[] = {0.1,1.0};
double strat120[] = {0.2,1.0};
double strat130[] = {0.3,1.0};
double strat140[] = {0.4,1.0};
double strat150[] = {0.5,1.0};
double strat160[] = {0.6,1.0};
double strat170[] = {0.7,1.0};
double strat180[] = {0.8,1.0};
double strat190[] = {0.9,1.0};
// Deescalating strategies
double strat01[] = {0.0,0.1};
double strat02[] = {0.0,0.2};
double strat03[] = {0.0,0.3};
double strat04[] = {0.0,0.4};
double strat05[] = {0.0,0.5};
double strat06[] = {0.0,0.6};
double strat07[] = {0.0,0.7};
double strat08[] = {0.0,0.8};
double strat09[] = {0.0,0.9};
// Ambiguous strategies
double strat19[] = {0.1,0.9};
double strat29[] = {0.2,0.9};
double strat39[] = {0.3,0.9};
double strat49[] = {0.4,0.9};
double strat59[] = {0.5,0.9};
double strat69[] = {0.6,0.9};
double strat79[] = {0.7,0.9};
double strat89[] = {0.8,0.9};
double strat18[] = {0.1,0.8};
double strat28[] = {0.2,0.8};
double strat38[] = {0.3,0.8};
double strat48[] = {0.4,0.8};
double strat58[] = {0.5,0.8};
double strat68[] = {0.6,0.8};
double strat78[] = {0.7,0.8};
double strat17[] = {0.1,0.7};
double strat27[] = {0.2,0.7};
double strat37[] = {0.3,0.7};
double strat47[] = {0.4,0.7};
double strat57[] = {0.5,0.7};
double strat67[] = {0.6,0.7};
double strat16[] = {0.1,0.6};
double strat26[] = {0.2,0.6};
double strat36[] = {0.3,0.6};
double strat46[] = {0.4,0.6};
double strat56[] = {0.5,0.6};
double strat15[] = {0.1,0.5};
double strat25[] = {0.2,0.5};
double strat35[] = {0.3,0.5};
double strat45[] = {0.4,0.5};
double strat14[] = {0.1,0.4};
double strat24[] = {0.2,0.4};
double strat34[] = {0.3,0.4};
double strat13[] = {0.1,0.3};
double strat23[] = {0.2,0.3};
double strat12[] = {0.1,0.2};
// Descending strategies
double strat10[] = {0.1,0.0};
double strat20[] = {0.2,0.0};
double strat30[] = {0.3,0.0};
double strat40[] = {0.4,0.0};
double strat50[] = {0.5,0.0};
double strat60[] = {0.6,0.0};
double strat70[] = {0.7,0.0};
double strat80[] = {0.8,0.0};
double strat90[] = {0.9,0.0};
double strat100[] = {1.0,0.0};
double strat21[] = {0.2,0.1};
double strat31[] = {0.3,0.1};
double strat41[] = {0.4,0.1};
double strat51[] = {0.5,0.1};
double strat61[] = {0.6,0.1};
double strat71[] = {0.7,0.1};
double strat81[] = {0.8,0.1};
double strat91[] = {0.9,0.1};
double strat101[] = {1.0,0.1};
double strat32[] = {0.3,0.2};
double strat42[] = {0.4,0.2};
double strat52[] = {0.5,0.2};
double strat62[] = {0.6,0.2};
double strat72[] = {0.7,0.2};
double strat82[] = {0.8,0.2};
double strat92[] = {0.9,0.2};
double strat102[] = {1.0,0.2};
double strat43[] = {0.4,0.3};
double strat53[] = {0.5,0.3};
double strat63[] = {0.6,0.3};
double strat73[] = {0.7,0.3};
double strat83[] = {0.8,0.3};
double strat93[] = {0.9,0.3};
double strat103[] = {1.0,0.3};
double strat54[] = {0.5,0.4};
double strat64[] = {0.6,0.4};
double strat74[] = {0.7,0.4};
double strat84[] = {0.8,0.4};
double strat94[] = {0.9,0.4};
double strat104[] = {1.0,0.4};
double strat65[] = {0.6,0.5};
double strat75[] = {0.7,0.5};
double strat85[] = {0.8,0.5};
double strat95[] = {0.9,0.5};
double strat105[] = {1.0,0.5};
double strat76[] = {0.7,0.6};
double strat86[] = {0.8,0.6};
double strat96[] = {0.9,0.6};
double strat106[] = {1.0,0.6};
double strat87[] = {0.8,0.7};
double strat97[] = {0.9,0.7};
double strat107[] = {1.0,0.7};
double strat98[] = {0.9,0.8};
double strat108[] = {1.0,0.8};
double strat109[] = {1.0,0.9};


// All strats together
double *strategies[] = {strat010, strat1010, strat99, strat88, strat77, strat66, strat55, strat44, strat33, strat22, strat11, strat00, strat110, strat120, strat130, strat140, strat150, strat160, strat170, strat180, strat190, strat01, strat02, strat03, strat04, strat05, strat06, strat07, strat08, strat09, strat19, strat29, strat39, strat49, strat59, strat69, strat79, strat89, strat18, strat28, strat38, strat48, strat58, strat68, strat78, strat17, strat27, strat37, strat47, strat57, strat67, strat16, strat26, strat36, strat46, strat56, strat15, strat25, strat35, strat45, strat14, strat24, strat34, strat13, strat23, strat43, strat12, strat10, strat20, strat30, strat40, strat50, strat60, strat70, strat80, strat90, strat100, strat21, strat31, strat41, strat51, strat61, strat71, strat81, strat91, strat101, strat32, strat42, strat52, strat62, strat72, strat82, strat92, strat102, strat53, strat63, strat73, strat83, strat93, strat103, strat54, strat64, strat74, strat84, strat94, strat104, strat65, strat75, strat85, strat95, strat105, strat76, strat86, strat96, strat106, strat87, strat97, strat107, strat98, strat108, strat109};

int nstrats = sizeof(strategies)/sizeof(strategies[0]); // This needs to be the same as the total number of possible response functions
int mutant_strat; // declaring the randomly chosen response function that will be selected

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
	if (intLeftIn < 0.0)
	{
		intLeftIn = 0.0;
	}
	if (intLeftIn > 1.0)
	{
		intLeftIn = 1.0;
	}
	
	intRightIn = (ceil((double) numLatticeSteps * ((double) 1.0 - genrand_real2())) - (double) 1.0) * mutLatStepIntercepts;
	if (intRightIn < 0.0)
	{
		intRightIn = 0.0;
	}
	if (intRightIn > 1.0)
	{
		intRightIn = 1.0;
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
	if (numInteractionsIn == 1)
	{
		if (firstMoverIn == 1)
		{
			fitnessIn = (double) 1.0 - initTransferIn + efficiencyFactor * (partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * initTransferIn);
		}
		else 
		{
			fitnessIn = (double) 1.0 - (intLeftIn + (intRightIn - intLeftIn) * partnerInitTransferIn) + efficiencyFactor * partnerInitTransferIn;
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
			partnerBeh = partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * focalBeh;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
		
			for (n = 1; n < numInteractionsIn; n++)
			{
				focalBeh = intLeftIn + (intRightIn - intLeftIn) * partnerBeh;
				partnerBeh = partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * focalBeh;
				fitnessIn += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
		else
		{
			partnerBeh = partnerInitTransferIn;
			focalBeh = intLeftIn + (intRightIn - intLeftIn) * partnerBeh;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;

			for (n = 1; n < numInteractionsIn; n++)
			{
				partnerBeh = partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * focalBeh;
				focalBeh = intLeftIn + (intRightIn - intLeftIn) * partnerBeh;
				fitnessIn += (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
			}
		}
	}
	else
	{
		fitnessIn = 1.0; // Retain endowment if no in-group interaction occurs.
	}
}

-(void) calculateFitnessInRevenge // NEW by Seabright: added tolerance threshold such that agents play selfishly if their partner de-escalates past a certain threshold.
{
	if (numInteractionsIn == 1) // No changes here because Revenge Threshold is irrelevant to 1st interaction
	{
		if (firstMoverIn == 1)
		{
			fitnessIn = (double) 1.0 - initTransferIn + efficiencyFactor * (partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * initTransferIn);
		}
		else 
		{
			fitnessIn = (double) 1.0 - (intLeftIn + (intRightIn - intLeftIn) * partnerInitTransferIn) + efficiencyFactor * partnerInitTransferIn;
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
			partnerBeh = partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * focalBeh;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;
		
			for (n = 1; n < numInteractionsIn; n++)
			{
				if(punishment == 0)
				{
					focalBeh = intLeftIn + (intRightIn - intLeftIn) * partnerBeh; 

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
					partnerBeh = partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * focalBeh;

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
			focalBeh = intLeftIn + (intRightIn - intLeftIn) * partnerBeh;
			fitnessIn = (double) 1.0 - focalBeh + efficiencyFactor * partnerBeh;

			for (n = 1; n < numInteractionsIn; n++)
			{
				if (partner_punishment == 0)
				{
					partnerBeh = partnerIntLeftIn + (partnerIntRightIn - partnerIntLeftIn) * focalBeh; 

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
					focalBeh = intLeftIn + (intRightIn - intLeftIn) * partnerBeh;

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
	intRightIn = tempIntRightIn;
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

-(void) categoricalMutation // New by Seabright: The mutation function for the categorical strategies model
{
	// initTransferIn (same as in continuous version)
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

	// intercepts
	if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
		mutant_strat = genrand_int32() % (nstrats-1); // random integer between 0 and 41
		intLeftIn = strategies[mutant_strat][0];
		intRightIn = strategies[mutant_strat][1];
		}
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
	if (intLeftIn <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intLeftIn = mutLatStepIntercepts*NumSteps;
		}
	}
	else if (intLeftIn >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intLeftIn = (double) 1.0 - mutLatStepIntercepts*NumSteps;
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
				if (intLeftIn > 1.0)
				{
					intLeftIn = 1.0;
				}
			}
			else
			{
				intLeftIn -= mutLatStepIntercepts*NumSteps;
				if (intLeftIn < 0.0)
				{
					intLeftIn = 0.0;
				}
			}
		}
	}

	// intRightIn
	if (intRightIn <= 0.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intRightIn = mutLatStepIntercepts*NumSteps;
		}
	}
	else if (intRightIn >= 1.0)
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate / (double) 2.0)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation
			intRightIn = (double) 1.0 - mutLatStepIntercepts*NumSteps;
		}
	}
	else
	{
		if (((double) 1.0 - genrand_real2()) <= probMutate)
		{
			NumSteps = (genrand_int32() % (mutLatMaxStepIntercepts))+1; // NEW Added by Seabright: Random integer between 1 and the max number of possible lattice steps for single mutation

			if (((double) 1.0 - genrand_real2()) <= 0.5)
			{
				intRightIn += mutLatStepIntercepts*NumSteps;
				if (intRightIn > 1.0)
				{
					intRightIn = 1.0;
				}
			}
			else
			{
				intRightIn -= mutLatStepIntercepts*NumSteps;
				if (intRightIn < 0.0)
				{
					intRightIn  = 0.0;
				}
			}
		}
	}

	// Revenge Threshold. NEW Added by Seabright
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