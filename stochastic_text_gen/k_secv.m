% Aceasta functie returneaza un cell-array de k-secvente pentru un cell-array unidimensional.
% De ex.: Pt [a, b, c, a, d], returneaza [abc, bca, cad] daca $k=3$.
function B = k_secv (A, k)
  % fie [a b a b c] si k=2
  % trebuie să întoarcă [ab ba ab bc]
  % HINT: folosiți strjoin

  j = 1;
  r = 1;

  % parcurg si salvez in new_token_aux sirurile concatenate, de ex: ab, ba
  % apoi le concatenez in B_old in functie de spatiu, adica voi obtine [ab ba],
  % asigurandu-ma ca adaug si indicii potriviti.
  for i = 1:(length(A) - k)
    aux(1:k) = A(i:(i + k -1));
    new_token_aux{j} = strjoin(aux(1:k));
    j = j + 1;
    B_old{r} = strjoin(new_token_aux(end), ' ');
    r = r + 1;
  endfor

  % ultimul pas este sa transpun pentru a obtine rezultatul final (indicii buni)
  B = B_old';
endfunction
