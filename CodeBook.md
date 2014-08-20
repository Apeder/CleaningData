---
title: "CodeBook"
output: html_document
---
The tidy dataset of 66 attributes arranged by 30 subjects and 6 actions was pared down from 561 original attributes. While complete measurements can be obtained from Run_Analysis.R, AverageMeasurementValuesbySubjectandActivity.txt has the only the mean of the subset of 66 attribute variables for each individual and each activity.  All data taken from: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Originally, the authors described the data in this way: 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

These variables are included in this dataset: 

1 Subject_id  
Numeric one to two digit value that indicates the individual subject on whom measurements were taken. Ranges from 1:30. 

2 Activity  
The six different kinds of motion measured for each subject.  Originally a one digit numeric value from 1:6, each activity value has been converted into a descriptive character integer.   
* Walking  
* Walk_Upstairs  
* Walk_Downstairs  
* Sitting  
* Standing  
* Laying  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation

All variables below are numeric values 13 to 16 digits in length, ranging between -1 to 1. 

3 tBodyAcc-mean()-X  
4 tBodyAcc-mean()-Y  
5 tBodyAcc-mean()-Z  
6 tBodyAcc-std()-X  
7 tBodyAcc-std()-Y  
8 tBodyAcc-std()-Z  
9 tGravityAcc-mean()-X  
10 tGravityAcc-mean()-Y  
11 tGravityAcc-mean()-Z  
12 tGravityAcc-std()-X  
13 tGravityAcc-std()-Y  
14 tGravityAcc-std()-Z  

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

15 tBodyAccJerk-mean()-X  
16 tBodyAccJerk-mean()-Y  
17 tBodyAccJerk-mean()-Z  
18 tBodyAccJerk-std()-X  
19 tBodyAccJerk-std()-Y  
20 tBodyAccJerk-std()-Z  
21 tBodyGyro-mean()-X  
22 tBodyGyro-mean()-Y  
23 tBodyGyro-mean()-Z  
24 tBodyGyro-std()-X  
25 tBodyGyro-std()-Y  
26 tBodyGyro-std()-Z  
27 tBodyGyroJerk-mean()-X  
28 tBodyGyroJerk-mean()-Y  
29 tBodyGyroJerk-mean()-Z  
30 tBodyGyroJerk-std()-X  
31 tBodyGyroJerk-std()-Y  
32 tBodyGyroJerk-std()-Z  
33 tBodyAccMag-mean()  
34 tBodyAccMag-std()  
35 tGravityAccMag-mean()  
36 tGravityAccMag-std()  
37 tBodyAccJerkMag-mean()  
38 tBodyAccJerkMag-std()  
39 tBodyGyroMag-mean()  
40 tBodyGyroMag-std()  
41 tBodyGyroJerkMag-mean()  
42 tBodyGyroJerkMag-std()  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodybodyAccJerkMag, fBodybodyGyroMag, fBodybodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

43 fBodyAcc-mean()-X  
44 fBodyAcc-mean()-Y  
45 fBodyAcc-mean()-Z  
46 fBodyAcc-std()-X  
47 fBodyAcc-std()-Y  
48 fBodyAcc-std()-Z  
49 fBodyAccJerk-mean()-X  
50 fBodyAccJerk-mean()-Y  
51 fBodyAccJerk-mean()-Z  
52 fBodyAccJerk-std()-X  
53 fBodyAccJerk-std()-Y  
54 fBodyAccJerk-std()-Z  
55 fBodyGyro-mean()-X  
56 fBodyGyro-mean()-Y  
57 fBodyGyro-mean()-Z  
58 fBodyGyro-std()-X  
59 fBodyGyro-std()-Y  
60 fBodyGyro-std()-Z  
61 fBodyAccMag-mean()  
62 fBodyAccMag-std()  
63 fBodyBodyAccJerkMag-mean()  
64 fBodyBodyAccJerkMag-std()  
65 fBodyBodyGyroMag-mean()  
66 fBodyBodyGyroMag-std()  
67 fBodyBodyGyroJerkMag-mean()  
68 fBodyBodyGyroJerkMag-std()  




 





