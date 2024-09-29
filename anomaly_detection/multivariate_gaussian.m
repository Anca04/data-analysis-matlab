% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    [m, n] = size(X);
    probabilities = zeros(m, 1);
    % calculez inversa
    inv_variances = inv(variances);

    % calculez separat primul termen din formula
    first_term = 1 / (sqrt((2 * pi) ^ n) * sqrt(det(variances)));

    % calculez restul formulei (densitatea de probabilitate) cu ajutorul unei
    % bucle for
    for i = 1:m
        probabilities(i, 1) = first_term * (exp((-1/2) * (X(i, 1:n) - ...
        mean_values) * inv_variances * (X(i, 1:n) - mean_values)'));
    endfor
endfunction
