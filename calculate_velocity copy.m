function velocity_vector = calculate_velocity(csv_file)
    % Read the CSV file
    subject_data = readtable(csv_file);
    
    % Calculate differences in x and y coordinates
    difX = diff(subject_data.x);
    difY = diff(subject_data.y);

    % Create velocity vector
    velocity_vector = zeros(60000, 1);
    
    % Calculate velocity for each data point
    for i = 1:60000
        x = difX(i);
        y = difY(i);
        velocity_vector(i) = sqrt((x*x) + (y*y));
    end
    
    % Replace outliers with NaN
    mean_velocity = nanmean(velocity_vector);
    std_dev_velocity = nanstd(velocity_vector);
    threshold = 5;  % Adjust this threshold based on your data and requirements
    outlier_indices = abs(velocity_vector - mean_velocity) > threshold * std_dev_velocity;
    velocity_vector(outlier_indices) = NaN;
end