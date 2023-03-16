function T = chebyshev(n)

    if n < 0
        throw(MException("lagrange:IllegalArgument", "The degree of the polynomial must be a non-negative integer."))
    end

    if n == 0
        T = 1;
        return
    end

    if n == 1
        T = [1, 0];
        return
    end

    T1 = 1;
    T2 = [1, 0];

    for i = 2:n
        tempT = conv(T2, [2, 0]) - conv(conv(T1, [0, 1]), [0, 1]);
        T1 = T2;
        T2 = tempT;
    end

    T = T2;
    T = T./2^(n-1);
end