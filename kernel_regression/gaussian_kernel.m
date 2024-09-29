% Aceasta functie este utilizata pentru implementarea funcției pentru kernelul gausian.
function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implementare kernel gausian.

  % x si y vectori coloana
  x = x(:);
  y = y(:);
  retval = 0;

  % calculez mai intai norma
  norm = sum((x - y) .^ 2);

  % aplic exp conform formulei
  retval = exp(-norm / (2 * sigma ^ 2));
endfunction
