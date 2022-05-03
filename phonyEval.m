function Out = phonyEval(In, Coeffs)
%PHONYEVAL Summary of this function goes here
    Out = zeros(length(In), 1);
    for SampleIndex = 1:length(In)
        for OrderIndex = 1:length(Coeffs)
            Out(SampleIndex) = Out(SampleIndex)+Coeffs(OrderIndex)*In(SampleIndex)^(length(Coeffs)-OrderIndex);
        end
    end
end

