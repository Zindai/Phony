function [prediction, residual] = phonyLPC(X, Y, coeffs)
%Returns the linear prediction and its residual of an input array (X), output (Y) and LPC coefficient array (coeffs).
%   Detailed explanation goes here
    numCoeffs = length(coeffs);
    prediction = 0;
    for i = 1:numCoeffs
        prediction = prediction+coeffs(i)*X(i);
    end
    residual = Y-prediction;
end

