function [a] = get_prediction_params_iterative (K, y, lambda)
  # TO DO: folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei.
  m = size(K, 1);
  I = eye(m);
  K_new = zeros(m, m);
  a = zeros(m, 1);

  K_new = lambda * I + K;

  % am considerat valori numerice pantru tol si max_iter
  tol = 1e-6;
  max_iter = 1000;
  b = lambda * y;
  x0 = ones(m, 1);

  % aplic gradientul conjugat pentru a rezolva sistemul K_new * a = b
  % sistemul este de tip A * x = b
  a = conjugate_gradient(K_new, b, x0, tol, max_iter);
endfunction
