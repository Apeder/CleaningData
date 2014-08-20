Creating tidy datasets from Human Activity Recognition Database
============
This dataset was produced from the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

Run_Analysis.R downloads the original files and assembles tidy datasets.  First, the script loads the "Test" dataset with 70% of the observations, subsets the 66 columns which contain mean and standard deviation values and then adds columns for Subject_id and Activity.  This same process is applied to the "Train" dataset with the remaining 30% of the observations, and then the two are merged into one dataset, the R object "CompSet". 

The first two columns are then renamed to "Subject_id" and "Activity", and each of the numeric values for the 6 activities is replaced with a more descriptive character integer. 

A second, independent tidy dataset, the R object 'aggdata', is then created to show the average of each feature variable for each activity and each subject.  The script then writes this dataset as 'AverageMeasurementValuesbySubjectandActivity.txt'

Each record provides:
======================================
- "Subject_id" 1:30 indicating which individual produced the measurement
- "Activity label" indicating what activity the individual performed for the measurement 
- A 66-feature vector with time and frequency domain variables. 

The dataset includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': List of all variables and explanations of how values were originally measured.

- 'AverageMeasurementValuesbySubjectandActivity.txt': "Tidy" dataset that provides the average of each variable for each activity and each subject. 

Notes: 
======
- Features are normalized and bounded within [-1,1].

For more information about the original dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Andrew Pederson. August 2014.
