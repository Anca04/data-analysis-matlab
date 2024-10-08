% Aceasta functie este tuilizata pentru calcularea estimarii produse de modelul vostru.
% Pentru un vector oarecare \textit{x} ca input (vector linie), \textit{X} (toți vectorii folositi pentru construirea modelului), \textit{f} (functia de kernel), \textit{f\_param} (al 3-lea parametru al functiei de kernel) si \textit{a} (estimarea parametrilor folositi la evaluare) trebuie sa returnati predictia facuta de modelul vostru pentru datele de intrare reprezentate de $x$.
function pred = eval_value(x, X, f, f_param, a)
   # TO DO: pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a.
   m = size(X, 1);
   s = 0;

   % calculez mai intai termenii cu ajutorul lui f, apoi fac suma
   % din formula am dedus alfa(i) = a(i)
   for i = 1:m
     value = f(X(i, :), x, f_param);
     s = s + a(i) * value;
   endfor

   pred = s;
endfunction
