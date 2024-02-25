RD1_S2_RD = process_subjects('/MATLAB Drive/GazeBase_v2_0 copy/Round_1/', 1001, 1335, 'S2', 'S2_Reading');
RD1_S1_RD = process_subjects('/MATLAB Drive/GazeBase_v2_0 copy/Round_1/', 1001, 1335, 'S1', 'S1_Reading');

%{
RD1_S2_RD_WGen = modify_velocity_gender(RD1_S2_RD, Subject_Gender);
RD1_S1_RD_WGen = modify_velocity_gender(RD1_S1_RD, Subject_Gender);

[RD1_S2_RD_male, RD1_S2_RD_fem] = separate_gender_data(RD1_S2_RD_WGen);
[RD1_S1_RD_male, RD1_S1_RD_fem] = seperate_gender_data(RD1_S1_RD_WGen);

mean_vel_fem_R1_S2_RD = calculate_column_means(RD1_S2_RD_fem)
mean_vel_male_R1_S2_RD = calculate_column_means(RD1_S2_RD_male)

mean_vel_male_R1_S1_RD = calculate_column_means(RD1_S1_RD_male)
mean_vel_fem_R1_S1_RD = calculate_column_means(RD1_S1_RD_fem)

%}