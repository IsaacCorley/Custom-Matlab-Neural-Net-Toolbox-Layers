classdef sigmoidLayer < nnet.layer.Layer

    methods
        function layer = sigmoidLayer()
            layer.Description = 'Sigmoid Activation Function Layer';
        end
        
        function Z = predict(layer, X)
            Z = 1 ./ (1 + exp(-X));
        end

        function dLdX = backward(layer, X, Z, dLdZ, ~)
            dLdX = dLdZ .* (Z .* (1 - Z));
        end
    end
end
