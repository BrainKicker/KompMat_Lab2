function N = newton(X, Y)

    if length(X) ~= length(Y)
        throw(MException("lagrange:IllegalArgument", "The lengths of the arrays X (length %d) and Y (length(%d) do not match.", length(X), length(Y)))
    end

    if isempty(X)
        throw(MException("lagrange:IllegalArgument", "The length of the arrays X is zero. The X array must not be empty"))
    end

    n = length(X);

    F = Y;

    for i = 2:n
        for j=n:-1:i
            F(j) = (F(j) - F(j-1)) / (X(j) - X(j-i+1));
        end
    end

    N = F(1);

    for i = 1:n-1

        f = F(i+1);
        for j = 1:i
            f = conv(f, [1, -X(j)]);
        end

        N = conv(N, [0, 1]);
        N = N + f;
    end
end