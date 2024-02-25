function [male_data, female_data] = separate_gender_data(Velocity_W_Gender)
    % Extract gender row
    gender_row = Velocity_W_Gender(2, :);

    % Separate data into two vectors based on gender
    male_indices = strcmpi(gender_row, 'male');
    female_indices = strcmpi(gender_row, 'female');

    male_data = Velocity_W_Gender(1, male_indices);
    female_data = Velocity_W_Gender(1, female_indices);
end
