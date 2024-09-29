% Aceasta functie este utilizata pentru implementarea funcției pentru kernelul liniar.
function retval = linear_kernel (x, y, other)
  # TO DO: implementare kernel linear.
  # Ignorati parametrul other pentru aceasta functie.

  % x si y vectori coloana
  x = x(:);
  y = y(:);
  retval = 0;

  retval = y' * x;
endfunction
