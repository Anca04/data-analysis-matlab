% Aceasta functie este utilizata pentru construirea matricii de kerneluri.
function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X.
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru.

  m = size(X, 1);
  K = zeros(m, m);

  % construiesc matricea de kerneluri, apeland f in functie de cum sunt descrisi
  % termenii din matricea Gram, selectand intrega linie si transformand intr-un
  % vector rand
  for i = 1:m
    for j = 1:m
      K(i, j) = f(X(j, :)', X(i, :), f_param);
    endfor
  endfor
endfunction
