function [P] = get_lower_inverse (L)
  [n n] = size(L);
  I = eye(n);

  for p = 1:n-1
      % calculez termenul care ma va ajuta sa fac 0 sub diag principala
      tp = L(p+1:n, p)/L(p,p);

      % fac zero sub diag principala
      for j = p:n
        L(p+1:n,j) = L(p+1:n,j) - tp*L(p,j);
      endfor

      % urmez acceasi pasi si pentru I, care va fi in final inversa (P)
      % nu caut sa fac zerouri pentru aceasta matrice, doar scad liniile
      % corespunzatoare
      for j = 1:n
        I(p+1:n,j) = I(p+1:n,j) - tp*I(p,j);
      endfor
     endfor

     % ultimul pas este sa fac impartiri pentru a obtine 1 pe diag principala
     % pentru L si voi imparti si pentru I
      for i = 1:n
        for j = 1:n
          if i==j
            I(i, :) = I(i, :)/L(i,i);
            L(i,j) = L(i,j)/L(i,i);
          endif
        endfor
      endfor

      % am aflat inversa
      P = I;
endfunction
