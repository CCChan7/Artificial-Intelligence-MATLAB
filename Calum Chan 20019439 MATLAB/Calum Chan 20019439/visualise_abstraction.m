% Description: generate a 2D visualisation of the abstraction produced by a
% classifier
%
% Inputs: 
% m: a classifier
% 
% Outputs:
% None
% 
% Notes: 
% You can just assume for now that the classifier has been trained on only
% two predictive features. We'll return to relax this assumption later on.
%
function visualise_abstraction(m)

    figure; % open a new figure window, ready for plotting
    
    % add your code on the lines below...
    minimumx = min(m.X(:,1)); %finds minimum value of value given for x value
    maximumx = max(m.X(:,1)); %finds minimum value of value given for y value
    stepx = (maximumx - minimumx) /100; %calculates the the amount to step based on min and max divided by 100

    minimumy = min(m.X(:,2)); 
    maximumy = max(m.X(:,2));
    stepy = (maximumy - minimumy) /100;

    x = []; %creates array for x axis
    y = []; %creates array for y axis

    for i = minimumx:stepx:maximumx %counts from minimum value to maximum value based on calculation done before
        for j = 1:1:((maximumx-minimumx)/stepx)+1 
            x(end+1,1) = i; %adds value found into x array for x axis
        end
    end

    for i = 1:1:((maximumy-minimumy)/stepy) +1
        for j = minimumy:stepy:maximumy
            y(end+1,1) = j; %add value found into y array for y axis
        end
    end

    grid = [x(:) y(:)]; %creates grid using all values from x and y array
    gridpredict = m.predict(grid); %generates prediction based on grid values
    gscatter(grid(:,1),grid(:,2),gridpredict) %creates grid based on grid values and grid predictions     
    
end