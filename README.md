# Binary-Genetic-Algorithm-For-Feature-Selection

## Project Overview
This project implements a binary genetic algorithm for spectral feature selection. The genetic algorithm optimizes the feature subset by iteratively evolving a population of solutions using selection, crossover, and mutation operators. After the program finishes runing, the best features to be selected are saved.  

## Dataset Description
The genetic algorithm feature selection code was applied to a dataset consisting of 120 Mid-infrared (MIR) spectra of fresh minced meats, specifically chicken, pork, and turkey. The dataset contains duplicate acquisitions from 60 independent samples, resulting in a raw data matrix size of [448 x 120].

## Data Collection
The dataset was obtained using Fourier transform infrared (FTIR) spectroscopy with attenuated total reflectance (ATR) sampling. The measurements were conducted as described in the study titled "Mid-infrared spectroscopy and authenticity problems in selected meats: a feasibility study" by Al-Jowder, O., Kemsley, E. K., and Wilson, R. H. (1997) [Food Chemistry 59, 195-20].

Data Format
The dataset is provided as a matrix with a size of [448 x 120]. Each row corresponds to a MIR spectrum for a specific meat sample and each column represents a unique acquisition. The values in the matrix represent the intensity of the absorption peaks or bands at different wavelengths.

## Usage
To run the genetic algorithm feature selection code, follow these steps:

1. Prepare your input data in csv or xlsx or mat formats. Your label column should be categorical
2. Open `Main.m` and modify the parameters such as population size (Nindiv), number of generations (maxIter), crossover type, selection Type, etc., as per your requirements.
3. Run the script:
4. The program will output the best feature subset found and any additional results or evaluation metrics, depending on your implementation.


## Algorithm Description
The binary genetic algorithm used in this project follows the following steps:
1. **CreatePopulation**: Generate an initial population of candidate feature subsets.
2. **objfunction**: Assess the fitness of each candidate solution based on a specified evaluation metric. Here accuracy is implemented
3. **Selection**: Choose the best-performing individuals as parents for the next generation, with a higher probability for fitter individuals.
4. **Crossover**: Combine pairs of parents to create offspring using a crossover operator (e.g., one-point crossover, uniform crossover(Using LOGIC OR proposed by us)).
5. **Termination**: Repeat steps 2-4 for a specified number of generations or until a termination criterion is met (e.g., convergence).


