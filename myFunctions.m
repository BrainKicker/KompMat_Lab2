function result = myConv(poly1, poly2)
    
    result = zeros(1, length(poly1) + length(poly2) - 1);

    for i = 1:length(poly1)
        for j = 1:length(poly2)
            result(i+j-1) = result(i+j-1) + poly1(i) * poly2(j);
        end
    end
end


function Y = myPolyval(P, X)
    
    Y = zeros(1, length(X));

    for i = 1:length(Y)
        Y(i) = P(i) * X(i)^(length(Y)-i);
    end
end