probabilities = [0.4   0.3    0.2    0.1];


% Normalise the probabilities
probabilities = probabilities/sum(probabilities);

% For each probability...
for index = 1:length(probabilities)
    % ...create an empty codeword
    codewords{index} = []
    % Create a set containing only this codeword
    set_contents{index} = index
    % Store the probability associated with this set
    set_probabilities(index) = probabilities(index)
end

disp('-------------------------------------------------------------------------');
disp('The sets of symbols and their probabilities are:')
for set_index = 1:length(set_probabilities)
    disp([num2str(set_probabilities(set_index)),'    ', num2str(set_contents{set_index})])
end
     
% Keep going until all the sets have been merged into one
while length(set_contents) > 1
    
    % Determine which sets have the lowest total probabilities
    [temp, sorted_indices] = sort(set_probabilities)

    % Get the set having the lowest probability
    zero_set = set_contents{sorted_indices(1)}
    % Get that probability	
    zero_probability = set_probabilities(sorted_indices(1))
    % For each codeword in the set...
    for codeword_index = 1:length(zero_set)
        % ...append a zero
        codewords{zero_set(codeword_index)} = [codewords{zero_set(codeword_index)}, 0]       
    end
    
    % Get the set having the second lowest probability
    one_set = set_contents{sorted_indices(2)}
    % Get that probability					
    one_probability = set_probabilities(sorted_indices(2))
    % For each codeword in the set...
    for codeword_index = 1:length(one_set)
        % ...append a one
        codewords{one_set(codeword_index)} = [codewords{one_set(codeword_index)}, 1]     
    end

    disp('The symbols, their probabilities and the allocated bits are:');
    % For each codeword...
    for index = 1:length(codewords)
        % ...display its bits
        disp([num2str(index),'    ',num2str(probabilities(index)),'    ',num2str(codewords{index})])
    end
    
    % Remove the two sets having the lowest probabilities...
    set_contents(sorted_indices(1:2)) = []
    % ...and merge them into a new set
    set_contents{length(set_contents)+1} = [zero_set, one_set]
    
    % Remove the two lowest probabilities...
    set_probabilities(sorted_indices(1:2)) = []
    % ...and give their sum to the new set
    set_probabilities(length(set_probabilities)+1) = zero_probability + one_probability
            
    disp('The sets and their probabilities are:')
    for set_index = 1:length(set_probabilities)
        disp([num2str(set_probabilities(set_index)),'    ', num2str(set_contents{set_index})])
    end
    
    
end

disp('-------------------------------------------------------------------------');
disp('The symbols, their probabilities and the allocated Huffman codewords are:');
% For each codeword...
for index = 1:length(codewords)
    % ...display its bits in reverse order
    disp([num2str(index), '    ', num2str(probabilities(index)),'    ',num2str(codewords{index}(length(codewords{index}):-1:1))])
end

% Calculate the symbol entropy
entropy = sum(probabilities.*log2(1./probabilities))

% Calculate the average Huffman codeword length
av_length = 0
for index = 1:length(codewords)
    av_length = av_length + probabilities(index)*length(codewords{index})
end

disp(['The symbol entropy is:                     ',num2str(entropy)])
disp(['The average Huffman codeword length is:    ',num2str(av_length)])
disp(['The Huffman coding rate is:                ',num2str(entropy/av_length)])