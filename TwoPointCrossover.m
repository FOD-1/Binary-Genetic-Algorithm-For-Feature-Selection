function pop = TwoPointCrossover(mother, father)

% yavru ve gen sayisini belirle
[Noffspring, Ngene] = size(mother);
pop = zeros(size(mother));

%Caprazlamayi gerceklestir.
for i=1:Noffspring
    Crossoverpoint = randperm(Ngene-1);
    Crossoverpoint1 = min(Crossoverpoint(1:2));
    Crossoverpoint2 = max(Crossoverpoint(1:2));
    if(rand<0.5)
        pop(i,1:Crossoverpoint1) = mother(i,1:Crossoverpoint1);
        pop(i,Crossoverpoint1+1:Crossoverpoint2) = father(i,Crossoverpoint1+1:Crossoverpoint2);
        pop(i,Crossoverpoint2+1:end) = mother(i,Crossoverpoint2+1:end);
    else
        pop(i,1:Crossoverpoint1) = father(i,1:Crossoverpoint1);
        pop(i,Crossoverpoint1+1:Crossoverpoint2) = mother(i,Crossoverpoint1+1:Crossoverpoint2);
        pop(i,Crossoverpoint2+1:end) = father(i,Crossoverpoint2+1:end);
    end%if
end%for

end % function