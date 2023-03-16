function d = maxDeviation(X, Y, P)

    if length(X) ~= length(Y) || length(Y) ~= length(P)
        throw(MException("lagrange:IllegalArgument", "The lengths of the arrays X (length %d), Y (length %d) and P (length %d) do not match.", length(X), length(Y), length(P)))
    end

    d = 0;
    for i = 1:length(X)
        curD = abs(Y(i) - P(i));
        if curD > d
            d = curD;
        end
    end
end