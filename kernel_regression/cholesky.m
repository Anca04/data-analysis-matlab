% Aceasta functie implementeaza metoda Cholesky pentru descompunerea LU a unei matrici pozitiv semi-definite.
function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita.
    [n n] = size(A);
    L = zeros(n);

    % calculez termenii pentru factorizarea Cholesky
    for i = 1 : n
      for j = 1 : i-1
        s = 0;
       % am vectorizat eliminand for-ul si folosind sum
        s = sum(L(i,1:j-1) .* L(j,1:j-1));
        L(i,j) = (A(i,j)-s)/L(j,j);
      endfor

      s = 0;
      % am vectorizat eliminand for-ul si folosind sum
      s = sum(L(i,1:i-1) .* L(i,1:i-1));
      L(i,i) = sqrt(A(i,i)-s);
    endfor
endfunction
