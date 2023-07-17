# Binary-Genetic-Algorithm-For-Feature-Selection

## Project Overview
This project implements a binary genetic algorithm for spectral feature selection. The genetic algorithm optimizes the feature subset by iteratively evolving a population of solutions using selection, crossover, and mutation operators. After the program finishes runing, the best features to be selected are saved.  


## Usage
To run the genetic algorithm feature selection code, follow these steps:

1. Prepare your input data in csv or xlsx formats. Your label column should be categorical
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


