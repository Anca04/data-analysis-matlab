
function [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives)
    precision = 0;
    recall = 0;
    F1 = 0;

    % calculez precision, recall, F1 in functie de true_pozitives,
    % false_negatives, false_pozitives

    % precision
    precision = true_pozitives / (true_pozitives + false_pozitives);

    % recall
    recall = true_pozitives / (true_pozitives + false_negatives);

    % F1
    F1 = 2 * precision * recall / (precision + recall);
endfunction
