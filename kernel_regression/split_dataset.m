% Aceasta functie este utilizata pentru divizarea setului de date pentru antrenare și testare.
function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # TO DO: împarte setul de date în 2 seturi:
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1.
  # Fiecare linie a matricii X reprezinta x^i si fiecare element de pe
  # linia coloanei y reprezinta y^i.

  % verific daca percentage se afla in intervalul impus
  if percentage < 0 || percentage > 1
    return;
  endif

  % numarul de date pentru antrenare si testare (nr linii)
  nr_lines = size(X, 1);
  nr_lines_train = round(percentage * nr_lines);
  nr_lines_pred = round((1 - percentage) * nr_lines);

  % impartire set de date
  X_train = X(1:nr_lines_train, :);
  y_train = y(1:nr_lines_train, :);

  X_pred = X(nr_lines_train + 1:nr_lines_pred, :);
  y_pred = y(nr_lines_train + 1:nr_lines_pred, :);
endfunction
