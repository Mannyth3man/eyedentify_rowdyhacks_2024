RD1_S2_RD_WGen = modify_velocity_gender(RD1_S2_RD, Subject_Gender);
RD1_S1_RD_WGen = modify_velocity_gender(RD1_S1_RD, Subject_Gender);

[RD1_S2_RD_male, RD1_S2_RD_fem] = separate_gender_data(RD1_S2_RD_WGen);
[RD1_S1_RD_male, RD1_S1_RD_fem] = separate_gender_data(RD1_S1_RD_WGen);

mean_vel_fem_R1_S2_RD = calculate_column_means(RD1_S2_RD_fem);
mean_vel_male_R1_S2_RD = calculate_column_means(RD1_S2_RD_male);

mean_vel_male_R1_S1_RD = calculate_column_means(RD1_S1_RD_male);
mean_vel_fem_R1_S1_RD = calculate_column_means(RD1_S1_RD_fem);

ROUND1_SESSION1_READING_MALE_AVERAGEVELOCITY = 1000 * nanmean(mean_vel_male_R1_S1_RD)
ROUND1_SESSION1_READING_FEMALE_AVERAGEVELOCITY = 1000 * nanmean(mean_vel_fem_R1_S1_RD)
ROUND1_SESSION2_READING_MALE_AVERAGEVELOCITY = 1000 * nanmean(mean_vel_male_R1_S2_RD)
ROUND1_SESSION2_READING_FEMALE_AVERAGEVELOCITY = 1000 * nanmean(mean_vel_fem_R1_S2_RD)