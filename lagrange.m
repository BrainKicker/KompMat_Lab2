function L = lagrange(X, Y)

    if length(X) ~= length(Y)
        throw(MException("lagrange:IllegalArgument", "The lengths of the arrays X (length %d) and Y (length(%d) do not match.", length(X), length(Y)))
    end

    n = length(X);

    L = zeros(1, n);

    for k = 1:n
        A = 1;
        for j = 1:n
            if j ~= k
                A = conv(A, [1/(X(k)-X(j)), -X(j)/(X(k)-X(j))]);
            end
        end
        L = L + Y(k) * A;
    end
end