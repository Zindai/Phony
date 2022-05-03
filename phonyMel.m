function [Out] = phonyMel(In, Target)
%PHONYMEL Summary of this function goes here
    if strcmp(Target, 'to')
        Out = 2595.*log10(1+(In./700));
    end
    if strcmp(Target, 'from')
        Out = 700.*(10.^(In./2595)-1);
    end
end