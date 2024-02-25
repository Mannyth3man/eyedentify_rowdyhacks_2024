% Reading table
subject_info = readtable("GazeBaseDemoInfo.csv");

% Initialize a new table with the same variables as subject_info
subject_info_shifted = table('Size',[height(subject_info), width(subject_info)],...
    'VariableTypes',varfun(@class, subject_info, 'OutputFormat', 'cell'),'VariableNames',subject_info.Properties.VariableNames);

% Iterate over each row of the subject_info table
for i = 1:height(subject_info)
    % Get the ParticipantID of the current row
    participant_id = subject_info.ParticipantID(i);
    
    % Assign the current row to the corresponding index in the new table
    subject_info_shifted(participant_id, :) = subject_info(i, :);
end

% Display the shifted table
%disp(subject_info_shifted);

Subject_Gender = subject_info_shifted.Self_IdentifiedGender;

%{

Velocity_W_Gender = [velocity_vectors; transpose(Subject_Gender)];
Velocity_W_Gender = vertcat(Velocity_W_Gender, new_row)

for i = 1:335
    Velocity_W_Gender(3, i) = i;
end
%}

