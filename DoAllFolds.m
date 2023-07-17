function acc = DoAllFolds(X, y, numFolds)

numVectors = size(X,2);
cvPartitions = cvpartition(numVectors,'KFold',numFolds);
acc = zeros(numFolds,1);

for ind= 1:numFolds
    acc(ind) = DoOneFold(X, y, cvPartitions, ind);
end
