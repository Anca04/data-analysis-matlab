% Această funcție este utilizată pentru determinarea pozitivelor false si adevărate precum și a negativelor false.
function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    false_pozitives = 0;
    false_negatives = 0;
    true_pozitives = 0;

    % calculez in functie de valoarile lui predictions, truths (true sau false)
    % aduna doar daca conditia e true (folosesc sum)

    % false positives
    false_pozitives = sum((predictions == 1) & (truths == 0));

    % false negative
    false_negatives = sum((predictions == 0) & (truths == 1));

    %true positives
    true_pozitives = sum((predictions == 1) & (truths == 1));
endfunction
