function retval = word_idx (distinct_wds)
    % return the word_idx dictionary HINT: containers.Map

    % aplic containers.Map, transmitand ca parametrii stringurile si indicii
    retval = containers.Map(distinct_wds, 1:length(distinct_wds));
endfunction
