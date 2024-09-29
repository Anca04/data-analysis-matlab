% Acestă funcție este utilizată pentru estimarea parametrilor folosiți la evaluare.
% Funcția primește că parametri matricea de kernel, valorile evaluate pentru inputurile pe care a fost construit K și parametrul $\lambda$ folosit pentru regularizare și trebuie să întoarcă vectorul coloană $a$ ce conține estimări ai parametrilor folosiți la evaluare (Trebuie să folosiți metoda gradientului conjugat).
function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei.

  m = size(K, 1);
  I = eye(m);
  K_new = zeros(m, m);
  a = zeros(m);

  K_new = lambda * I + K;

  % aplic cholesky
  L = cholesky(K_new);

  % calculez inversa cu functia implementata anterior
  L_inv = get_lower_inverse(L);

  % calculez inversa si pentru transpusa
  L_inv_trans = inv(L');

  % fac produsul dintre  inverse
  prod = L_inv_trans * L_inv;

  a = lambda * prod * y;
endfunction
