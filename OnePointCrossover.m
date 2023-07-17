function pop = OnePointCrossover(mother, father)


% precise the offspring and gene size
[Noffspring, Ngene] = size(mother);
pop = zeros(size(mother));

%Caprazlamayi gerceklestir.
for i=1:Noffspring
    crossoverpoint = 1 + floor( rand * (Ngene-1));
    if(rand<0.5)
        pop(i,1:crossoverpoint) = mother(i,1:crossoverpoint);
        pop(i,crossoverpoint+1:end) = father(i,crossoverpoint+1:end);
    else
        pop(i,1:crossoverpoint) = father(i,1:crossoverpoint);
        pop(i,crossoverpoint+1:end) = mother(i,crossoverpoint+1:end);
    end%if
end%for

end % function