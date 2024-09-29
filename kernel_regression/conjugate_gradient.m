function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
  # Implementati algoritmul pentru metoda gradientului conjugat.

  % calculez reziduu
  r = b - A * x0;
  % v = directie
  v = r;
  % valoarea initiala
  x = x0;
  tols = tol ^ 2;
  k = 1;

  % in functie de nr de iteratii si norma
  while k <= max_iter & r' * r > tols
    % calculez pasul
    t = (r' * r) / (v' * A * v);

    % actualizez solutia
    x = x + t * v;
    aux = r;

    % actualizez reziduu
    r = r - t * A * v;
    s = (r' * r) / (aux' * aux);

    % actualizez directia
    v = r + s * v;
    aux = r;
    k = k + 1;
  endwhile
endfunction
