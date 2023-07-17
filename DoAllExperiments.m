function acc = DoAllExperiments(X, y, opts)

% acc = zeros(numExperiments,1);

for ind= 1:opts.numExperiments
    acc_all = DoAllFolds(X, y, opts.numFolds);
end
acc = 100*(mean(acc_all));