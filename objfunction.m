function FitnessValues = objfunction(X, y, suru, opts)

acc = [];
for ind = 1:opts.Nindiv
    result = DoAllExperiments(X((suru(ind,:)==1),:),y,opts);
    acc = [acc; result];
end % for

FitnessValues = acc;


end % function