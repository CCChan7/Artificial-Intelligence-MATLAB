classdef my_ClassificationTree < handle
    
    properties
        
        % Note: we stick with the Matlab naming conventions from fitctree
        
        X % training examples
        Y % training labels
        MinParentSize % minimum parent node size
        MaxNumSplits % maximum number of splits
        
        Verbose % are we printing out debug as we go?
        
        % add any other properties you want on the lines below...
        
        
        
        
    end
    
    methods
        
        % constructor: implementing the fitting phase
        
        function obj = my_ClassificationTree(X, Y, MinParentSize, MaxNumSplits, Verbose)
            
            % set up our training data:
            obj.X = X;
            obj.Y = Y;
            % store the minimum parent node size we're using:
            obj.MinParentSize = MinParentSize;
            % store the maximum number of splits we're using:
            obj.MaxNumSplits = MaxNumSplits;
            
            % are we printing out debug as we go?:
            obj.Verbose = Verbose;
            
            % over to you for the rest... 
            
            % add your code on the lines below...
            
            % (note: a function has also been provided on Moodle to
            % calculate weighted impurity given any set of labels)
            
            
            
            
            
            
        end
        
        % the prediction phase:
        
        function predictions = predict(obj, test_examples)
            
            % get ready to store our predicted class labels:
            predictions = categorical;
            
            % over to you for the rest... 
            
            % add your code on the lines below...
            
            
            node_index = 1;

        while (obj.X(node_index, 1) ~= 0)
         if (obj.X(node_index,1) < test_examples)
                  node_index = obj.X(node_index,2);
         else
                  node_index = obj.X(node_index,1);
         end
         end
            prediction = obj.Y(node_index); 
        

        end
        
        % add any other methods you want on the lines below...
        
        

        
        
        
        
    end
    
end