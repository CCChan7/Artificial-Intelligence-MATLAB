classdef my_ClassificationKNN < handle
        
    properties
  
        
        X % training examples
        Y % training labels
        NumNeighbors % number of nearest neighbours to consider
        
        Verbose 
    end
    
    methods
        
        
        function obj = my_ClassificationKNN(X, Y, NumNeighbors, Verbose)
            
            % set up our training data:
            obj.X = X;
            obj.Y = Y;
            % store the number of nearest neighbours we're using:
            obj.NumNeighbors = NumNeighbors;
            
            obj.Verbose = Verbose;
        end
        
        % the prediction phase:
        
        function predictions = predict(obj, test_examples)
            
            % get ready to store our predicted class labels:
            predictions = categorical;
            for i=1:size(test_examples,1) %loops through the test examples given
                predicted = knnsearch(obj.X,test_examples(i:i,:), 'K', obj.NumNeighbors); %searches through the training examples and testing examples
                predictions(i,1) = mode(obj.Y(predicted)); %returns the predicted value that was found
            end

%             for i=1:size(test_examples,1)
%                 distances = [];
%                 for j=1:size(obj.X,1)
%                     distances(j) = sqrt(sum(test_examples(i)-obj.X(j)).^2);
%                 end
%                
%                 [~,index] = sort(distances);
%                 ind = index(:, 1:obj.NumNeighbors);
%                  if (obj.NumNeighbors >= 1)
%                      predictions(i,1) = mode(obj.Y(ind));
%                  end
% 
%             end
                     
        end
        
    end
    
end
