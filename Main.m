tic
clear,clc;
load FreshMeat.mat
% X = X';
y = categorical(t);
opts.numExperiments = 2;
opts.numFolds = 5;
opts.Classifier = "knn";
opts.selectionType = 'tournament';
opts.crossoverType = 'uniform';
opts.maxIter = 1;
opts.Ngene = size(X,2);
opts.Nindiv = 50;
numFeatures = size(X,1); % number of features
% opts.NFeatures = 100;
%%
ACC = [];
BEST = [];
for i = 1:5%numFeatures-1

    opts.NFeatures = i;
    [best, maxfv] = GAfs(X, y, opts);

    ACC= [ACC; maxfv];
    BEST = [BEST; best];

    %     writematrix(ACC,"Accuracies.csv");
    %     writematrix(ACC,"Accuracies.csv");

end
t1 = toc;
%%
% Select the best festures from the data
[~, maxAccInd] = max(ACC);
X_Best = X((BEST(maxAccInd,:)==1),:);
% writematrix(X_Best, "BestFeatures");