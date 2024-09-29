% Această funcție este utilizată pentru determinarea celui mai bun factor 'epsilon'. Apoi outlierii vor fi toți cei pentru care probabilitatea este mai mica decât 'epsilon'.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;

    % calculez valoarea lui i intre min si max
    i = (max(probabilities) - min(probabilities)) / 1000;

    m = size(probabilities);

    % calculez epsilon, parcurgand cu for, pasul de incrementare fiind i
    for epsilon = min(probabilities):i:max(probabilities)
        outliers = zeros(m);

        % calculez outlierii in functie de epsilon
        for i = 1 : m
            if probabilities(i) < epsilon
                outliers(i) = 1;
                else
                outliers(i) = 0;
            endif
        endfor

      % apelez functiile aferente
      [false_pozitives false_negatives true_pozitives] = check_predictions(outliers, truths);

      [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives);

      % calculez best_F1, best_epsilon, etc
      if F1 > best_F1
        best_F1 = F1;
        best_epsilon = epsilon;
        associated_precision = precision;
        associated_recall = recall;
      endif
    endfor
endfunction
