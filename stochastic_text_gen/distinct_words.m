% Aceasta functie intoarce tokenurile sortate si unice.
function retval = distinct_words (tokens)
  % TODO: Găsiți stringurile unice. HINT: unique

  % am aplicat direct unique, deoarece acesta sorteaza implicit si elimina
  % duplicatele
  retval = unique(tokens);
endfunction
