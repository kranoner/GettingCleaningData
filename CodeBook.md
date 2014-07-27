Getting and Cleaning Data
=========================
Coursera project - Jonathan Salfati - 27 Jul 2014
-------------------------------------------------


Project description
-------------------
Purpose of this project is to apply course material learned during the Getting and Cleaning Data course.
Data set used in this project - Human Activity Recognition Using Smartphones - have been collected from experiment *Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.*

*Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa I-16145, Italy.*

The project is written in R.

Getting and Cleaning data
-------------------------
The data were downloaded from internet [getdata_projectfiles_UCI HAR Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) then unzipped.
More information about the dataset are provided in README.txt in the dataset folder. 

Once data folder extracted the R script `run_analysis.R` read, clean and reshape the data contained. 
The idea of the project is to merge data that were splitted into two set, train and test, for the purpose of the experiment.
Only the following files will be used in this project:
	
	* subject_test.txt / subject_train.txt : List of subjects measurement
	* X_test.txt / X_train.txt : List of measurements values
	* y_test.txt / y_train.txt : Activity labels
	
Data merge: 
We bind line by line the list of subject measurement to measurement values. Then we transform any activity ids contained in the measurement value by the proper human readable value described in the activity label file.
Once merged the output dataset contains 81 columns. More details in the next section.

All the following measurements are data aggregated fom observations by Subject and activity. 
Finally the output dataset is written in the activityMeasure.csv file.


Data dictionary
---------------

	subjectID 
		Subject identification number. Integer from 1 to 30 
	activity
		Activity type:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

	tBodyAcc.mean.X
	tBodyAcc.mean.Y
	tBodyAcc.mean.Z
	tBodyAcc.std.X
	tBodyAcc.std.Y
	tBodyAcc.std.Z
	tGravityAcc.mean.X
	tGravityAcc.mean.Y
	tGravityAcc.mean.Z
	tGravityAcc.std.X
	tGravityAcc.std.Y
	tGravityAcc.std.Z
	tBodyAccJerk.mean.X
	tBodyAccJerk.mean.Y
	tBodyAccJerk.mean.Z
	tBodyAccJerk.std.X
	tBodyAccJerk.std.Y
	tBodyAccJerk.std.Z
	tBodyGyro.mean.X
	tBodyGyro.mean.Y
	tBodyGyro.mean.Z
	tBodyGyro.std.X
	tBodyGyro.std.Y
	tBodyGyro.std.Z
	tBodyGyroJerk.mean.X
	tBodyGyroJerk.mean.Y
	tBodyGyroJerk.mean.Z
	tBodyGyroJerk.std.X
	tBodyGyroJerk.std.Y
	tBodyGyroJerk.std.Z
	tBodyAccMag.mean
	tBodyAccMag.std
	tGravityAccMag.mean
	tGravityAccMag.std
	tBodyAccJerkMag.mean
	tBodyAccJerkMag.std
	tBodyGyroMag.mean
	tBodyGyroMag.std
	tBodyGyroJerkMag.mean
	tBodyGyroJerkMag.std
	fBodyAcc.mean.X
	fBodyAcc.mean.Y
	fBodyAcc.mean.Z
	fBodyAcc.std.X
	fBodyAcc.std.Y
	fBodyAcc.std.Z
	fBodyAcc.meanFreq.X
	fBodyAcc.meanFreq.Y
	fBodyAcc.meanFreq.Z
	fBodyAccJerk.mean.X
	fBodyAccJerk.mean.Y
	fBodyAccJerk.mean.Z
	fBodyAccJerk.std.X
	fBodyAccJerk.std.Y
	fBodyAccJerk.std.Z
	fBodyAccJerk.meanFreq.X
	fBodyAccJerk.meanFreq.Y
	fBodyAccJerk.meanFreq.Z
	fBodyGyro.mean.X
	fBodyGyro.mean.Y
	fBodyGyro.mean.Z
	fBodyGyro.std.X
	fBodyGyro.std.Y
	fBodyGyro.std.Z
	fBodyGyro.meanFreq.X
	fBodyGyro.meanFreq.Y
	fBodyGyro.meanFreq.Z
	fBodyAccMag.mean
	fBodyAccMag.std
	fBodyAccMag.meanFreq
	fBodyBodyAccJerkMag.mean
	fBodyBodyAccJerkMag.std
	fBodyBodyAccJerkMag.meanFreq
	fBodyBodyGyroMag.mean
	fBodyBodyGyroMag.std
	fBodyBodyGyroMag.meanFreq
	fBodyBodyGyroJerkMag.mean
	fBodyBodyGyroJerkMag.std
	fBodyBodyGyroJerkMag.meanFreq
