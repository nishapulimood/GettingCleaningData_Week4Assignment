# GettingCleaningData_Week4Assignment

This repo contains the following files:
  
- tidydata.txt - contains the final "tidy" dataset as required by the assignment, which is a subset of the original dataset
- run_analysis.R - contains the annotated code used to create tidydata.txt from its original source
- README.md - describes what was done to create tidydata.txt
- CodeBook_updated.md - contains a new version of the original data's code book, updated to explain and describe only what is finally displayed in tidydata.txt

The run_analysis.R script accomplishes the following:

- Reads in all the necessary files using read.table()
- Merges the training and the test datasets using cbind() and rbind().
- Extracts only the mean and standard deviation variables for each feature by subsetting.
- Uses descriptive names to label the activities in the data set (see names listed below).
- Appropriately labels the columns with descriptive variable names (see names listed below).
- Calculates the average of each variable for each subject during each activity using aggregate().
- Removes the initial "Activity" and "Subject" columns since aggregate() creates new ones.
- Creates an independent tidy data set of the above data saved as tidydata.txt.
- Gets the final output by reading in tidydata.txt as an object "tidydata"

Details about tidydata.txt (# of rows = 180, # of columns = 68)

Subject: 1 - 30
Activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
Data: Average of the meana nd standard deviation variables of each feature measured
All variables in tidydata.txt:
Activity"
Subject"
Time_BodyAccelerometer_Mean.X
Time_BodyAccelerometer_Mean.Y
Time_BodyAccelerometer_Mean.Z
Time_BodyAccelerometer_Stdev.X
Time_BodyAccelerometer_Stdev.Y
Time_BodyAccelerometer_Stdev.Z
Time_GravityAccelerometer_Mean.X
Time_GravityAccelerometer_Mean.Y
Time_GravityAccelerometer_Mean.Z
Time_GravityAccelerometer_Stdev.X
Time_GravityAccelerometer_Stdev.Y
Time_GravityAccelerometer_Stdev.Z
Time_BodyAccelerometerJerk_Mean.X
Time_BodyAccelerometerJerk_Mean.Y
Time_BodyAccelerometerJerk_Mean.Z
Time_BodyAccelerometerJerk_Stdev.X
Time_BodyAccelerometerJerk_Stdev.Y
Time_BodyAccelerometerJerk_Stdev.Z
Time_BodyGyroscope_Mean.X
Time_BodyGyroscope_Mean.Y
Time_BodyGyroscope_Mean.Z
Time_BodyGyroscope_Stdev.X
Time_BodyGyroscope_Stdev.Y
Time_BodyGyroscope_Stdev.Z
Time_BodyGyroscopeJerk_Mean.X
Time_BodyGyroscopeJerk_Mean.Y
Time_BodyGyroscopeJerk_Mean.Z
Time_BodyGyroscopeJerk_Stdev.X
Time_BodyGyroscopeJerk_Stdev.Y
Time_BodyGyroscopeJerk_Stdev.Z
Time_BodyAccelerometerMag_Mean
Time_BodyAccelerometerMag_Stdev
Time_GravityAccelerometerMag_Mean
Time_GravityAccelerometerMag_Stdev
Time_BodyAccelerometerJerkMag_Mean
Time_BodyAccelerometerJerkMag_Stdev
Time_BodyGyroscopeMag_Mean
Time_BodyGyroscopeMag_Stdev
Time_BodyGyroscopeJerkMag_Mean
Time_BodyGyroscopeJerkMag_Stdev
Freq_BodyAccelerometer_Mean.X
Freq_BodyAccelerometer_Mean.Y
Freq_BodyAccelerometer_Mean.Z
Freq_BodyAccelerometer_Stdev.X
Freq_BodyAccelerometer_Stdev.Y
Freq_BodyAccelerometer_Stdev.Z
Freq_BodyAccelerometerJerk_Mean.X
Freq_BodyAccelerometerJerk_Mean.Y
Freq_BodyAccelerometerJerk_Mean.Z
Freq_BodyAccelerometerJerk_Stdev.X
Freq_BodyAccelerometerJerk_Stdev.Y
Freq_BodyAccelerometerJerk_Stdev.Z
Freq_BodyGyroscope_Mean.X
Freq_BodyGyroscope_Mean.Y
Freq_BodyGyroscope_Mean.Z
Freq_BodyGyroscope_Stdev.X
Freq_BodyGyroscope_Stdev.Y
Freq_BodyGyroscope_Stdev.Z
Freq_BodyAccelerometerMag_Mean
Freq_BodyAccelerometerMag_Stdev
Freq_BodyAccelerometerJerkMag_Mean
Freq_BodyAccelerometerJerkMag_Stdev
Freq_BodyGyroscopeMag_Mean
Freq_BodyGyroscopeMag_Stdev
Freq_BodyGyroscopeJerkMag_Mean
Freq_BodyGyroscopeJerkMag_Stdev
