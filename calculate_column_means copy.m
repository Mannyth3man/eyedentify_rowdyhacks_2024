function means = calculate_column_means(matrix)
    % Check if the input is a matrix
    if ~ismatrix(matrix)
        error('Input must be a matrix');
    end
    
    % Initialize vector to store means
    num_columns = size(matrix, 2);
    means = zeros(num_columns, 1);
    
    % Calculate mean for each column
    for i = 1:num_columns
        means(i) = nanmean(matrix{:, i});
    end
end