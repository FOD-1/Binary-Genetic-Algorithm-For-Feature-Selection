function acc = DoOneFold(X, y, cvPartitions, foldNumber)

% This function creates partitions and then use build in ML models to
% calculate fitness values
pTrain = training(cvPartitions, foldNumber);
pTest = test(cvPartitions, foldNumber);
   
XTrain = X(:,pTrain);
yTrain = y(pTrain);
       
XTest = X(:, pTest);
yTest = y(pTest);
   
mdl = fitcknn(XTrain', yTrain', 'NumNeighbors',5);
yTest_mdl = predict(mdl, XTest');
   
acc = numel( find(yTest_mdl == yTest') ) / numel(yTest);