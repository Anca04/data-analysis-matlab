Implementare tema 1 MN

Task 1 - anomaly_detection

Am implementat functiile pentru calcularea mediei si variantei, densitatii de
probabilitate, pentru determinarea predictiilor si celui mai bun 'epsilon'. Am
inceput prin calcularea mediei si variantei, cu ajutorul formulelor din enuntul
temei. Urmatoarea functie calculeaza densitatea de probilitate prin 
implementarea formulei. Verificarea predictiilor presupune testarea valorilor 
true sau false si insumarea unde conditia este true. Apoi, cu ajutorul acestor 
rezultate calculez precision, recall, care ma ajuta sa aflu cine este F1. 
Ulterior, determin cel mai bun 'epsilon' in functie de min si max, calculez 
outlierii conform conditiei dintre probabilitate si epsilon. Apelez functiile
implementate anterior pentru aflarea lui best_F1, best_epsilon, precision si 
recall.


Task 2 - kernel_regression

Am implementat functiile pentru calcularea kernelurilor liniar, polinomial si 
gaussian, pentru divizarea setului de date, pentru estimarea parametrilor 
folositi la evaluare si pentru calcularea estimarii produse de model.
Implementarea kernelurilor am realizat-o prin transformarea, mai intai,
in vectori coloana pe care i-am folosit la calculul formulei. Pentru divizarea
setului de date, m-am folosit de functia round pentru a deduce nr de date
pentru antrenare si testare, in functie de nr de linii ale matricei X. Apoi am
distribuit setul de date. Matricea de kerneluri (matricea Gram) am construit-o
prin apelarea lui f cu datele corespunzatoare termenilor generali. Am vectorizat
metoda Cholesky, eliminand buclele for si folosind sum. De asemenea, am 
prelucrat algoritmul de eliminare gaussiana pentru a functiona pentru o matrice
inferior triunghiulara. Functiile de get_prediction folosesc Cholesky si 
gradientul (am trecut termenul la -1 in stanga). Pentru calcularea estimarii 
produse de model, am implementat formula.

Task 3 - stochastic_text_gen

Am implementat functii pentru extragerea tokenurilor sortate si unice, pentru 
construirea unui dictionar si pentru returnarea unui cell-array. Sortarea si 
eliminarea duplicatelor o fac cu ajutorul lui unique (sorteaza implicit).
Returnarea cell-array-ului am realizat-o cu ajutorul lui strjoin, am concatenat
prima data grupurile de caractere (ab, bc etc), apoi le-am concatenat in functie
de spatiu pentru a obtine rezultatul final. Am transpus pentru obtinerea 
corecta a indiciilor. Folosind containers.Map, am returnat un dictionar care
contine indecsii.