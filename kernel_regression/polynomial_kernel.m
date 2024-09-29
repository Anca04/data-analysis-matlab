% Aceasta functie este utilizata pentru implementarea funcției pentru kernelul polinomial.
function retval = polynomial_kernel (x, y, d)
  # TO DO: implementare kernel polinomial.

  % x si y vectori coloana
  x = x(:);
  y = y(:);
  retval = 0;

  retval = (1 + y' * x) ^ d;
endfunction
