% Această funcție va determina media și varianța pentru datasetul dat.
function [mean_values variances] = estimate_gaussian(X)
    [m, n] = size(X);
    mean_values = zeros(1,1);
    variances = zeros(1, n);

    % calculez media
    mean_values = (1/m) * sum(X);

    % calculez varianta pentru datasetul dat, implementand formula din enunt
    for j = 1:n
      for i = 1:m
        variances = ...
        variances + (X(i, 1:n) - mean_values)' * (X(i, 1:n) - mean_values) / 2;
      endfor
    endfor
    variances = (1/m) * variances;
endfunction
