function out = phonyFFT(in)
    n = length(in);
    w = exp(2*pi*1i/n);
    if (n == 1)
        out = in;
    else
        inEven = in(2:2:end);
        inOdd = in(1:2:end);
        outEven = phonyFFT(inEven);
        outOdd = phonyFFT(inOdd);
        out = zeros(n, 1);
        for i = 1:n/2
            out(i) = outEven(i)+w^(i-1)*outOdd(i);
            out(n/2+i) = outEven(i)-w^(i-1)*outOdd(i);
        end
    end
end