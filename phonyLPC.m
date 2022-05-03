function [Pred, Resi] = phonyLPC(X, Y, Coeffs)
%Returns the linear prediction and its residual of an input array (X), output (Y) and LPC coefficient array (Coeffs).
    NumCoeffs = length(Coeffs);
    Pred = 0;
    for CoeffIndex = NumCoeffs
        Pred = Pred+Coeffs(CoeffIndex)*X(CoeffIndex);
    end
    Resi = Y-Pred;
end