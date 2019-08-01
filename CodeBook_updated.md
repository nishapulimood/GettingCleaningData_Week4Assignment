---
title: "CodeBook_updated"
author: "NSP"
date: "7/31/2019"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Updated Code Book
### Data Source: Human Activity Recognition Using Smartphones Dataset, Version 1.0
Original Author Credits: 
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

### Experimental Design
Subject cohort: 
30 volunteers within an age bracket of 19-48 years. 

Tasks: 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist that was embedded with an accelerometer and gyroscope.

Raw signal measurements: 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  

### Data Analysis
Signal processing methods: 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Feature Selection:
The features selected for this database come from the accelerometer and gyroscope 3-axial, time-domain, raw signals. The gyroscope signal is named Time_BodyGyroscope-XYZ. The accelerometer signal was further separated into body and gravity acceleration signals (Time_BodyAccelerometer-XYZ and Time_GravityAccelerometer-XYZ)."-XYZ" is used to denote 3-axial signals in the X, Y and Z directions. The prefix "Time" denotes time domain signals.

Following the signal processing described in the previous section, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time_BodyAccelerometerJerk-XYZ and Time_BodyGyroscopeJerk-XYZ). 

Also the magnitude (Mag) of these three-dimensional signals were calculated using the Euclidean norm (Time_BodyAccelerometerMag, Time_GravityAccelerometerMag, Time_BodyAccelerometerJerkMag, Time_BodyGyroscopeMag, Time_BodyGyroscopeJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency (Freq) domain signals (Freq_BodyAccelerometer-XYZ, Freq_BodyAccelerometerJerk-XYZ, Freq_BodyGyroscope-XYZ, Freq_BodyAccelerometerMag, Freq_BodyAccelerometerJerkMag, Freq_BodyGyroscopeMag, Freq_BodyGyroscopeJerkMag. 

### Final Data Shown (tidydata.txt)  

For each record, the dataset displays:
* A 66-feature vector with time and frequency domain variables. 
* Its activity label. 
* A numerical ID for the subject who carried out the experiment.

Feature List:
*Time_BodyAccelerometer-XYZ
*Time_GravityAccelerometer-XYZ
*Time_BodyAccelerometerJerk-XYZ
*Time_BodyGyroscope-XYZ
*Time_BodyGyroscopeJerk-XYZ
*Time_BodyAccelerometerMag
*Time_GravityAccelerometerMag
*Time_BodyAccelerometerJerkMag
*Time_BodyGyroscopeMag
*Time_BodyGyroscopeJerkMag
*Freq_BodyAccelerometer-XYZ
*Freq_BodyAccelerometerJerk-XYZ
*Freq_BodyGyroscope-XYZ
*Freq_BodyAccelerometerMag
*Freq_BodyAccelerometerJerkMag
*Freq_BodyGyroscopeMag
*Freq_BodyGyroscopeJerkMag

For each above feature, the following variables were estimated: 
Mean(): Mean value
Stdev(): Standard deviation

The data values represent the average of each variable for each activity and each subject.

