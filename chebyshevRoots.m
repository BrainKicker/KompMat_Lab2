function R = chebyshevRoots(startX, endX, n)

    R = roots(chebyshev(n));
    R = R.*((endX - startX)/2);
    R = R +((startX + endX)/2);
    
    % another way to compute roots
    %R = zeros(1, length(chebyshev(n)) - 1);
    
    %for i = 1:length(R)
    %    R(i) = cos(((2*i-1)*pi)/(2*length(R))) * ((endX - startX)/2) + ((startX + endX)/2);
    %end
end