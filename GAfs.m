function [best, maxfv] = GAfs(X, y, opts)

% Generate initial population
pop = CreatePopulation(opts);

iter = 1;
while (1)
   
    % Calculate the fitness value of the initial population
    fv =  objfunction(X, y, pop, opts);

    % Thes best chromosome among all
    [maxfv, maxfvInd] = max(fv);
    best = pop(maxfvInd,:);

    fprintf("FeatureSize = %d - (Iter = %d | ACC = %2.4f)\n", opts.NFeatures, iter, maxfv);

    if iter >=opts.maxIter || maxfv >= 100
        break;
    end

    [mother, father] = Secim(pop, opts.NIndiv-1, fv, opts.selectionType);
    newpop = Crossover(mother, father, opts);
    pop = [best; newpop];
    
    iter = iter + 1;


end% while