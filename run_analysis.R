# This script aims at providing tidy data for the Human Activity Recognition dataset.
# Data coming from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# Dataset is the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

# To provide tidy data the script does the following
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


dataset_root_dir <- "UCI\ HAR\ Dataset"

body.gyro <- data.frame()
body.acc <- data.frame()
total.acc <- data.frame()
subjects <- data.frame()
experiences <- data.frame()
labels <- data.frame()
features <- data.frame()

# Read train and test dataset in order to merge them in one big data frame for each measurement
# Note: only subject, experiences and labels will be used for this coursera Getting and Cleaning Data. 
# Add data read from files based on file name pattern.
# 		body.gyro	from body_gyro_*.txt
# 		body.acc	from body_acc_*.txt
# 		total.acc	from total_acc_*.txt
# 		subjects	from subject_*.txt
# 		experiences	from X_*.txt
# 		labels	from y_.txt
#		features	from features.txt


setwd(dataset_root_dir)
files <- (list.files(".", include.dirs = T, recursive=T))
lapply(files, function(x){
	if (grepl("body_acc_", x)){
		df <- read.table(file=x)
		body.acc <<- rbind (body.acc, df)
		print (paste(x, " imported"))
	}
	else if (grepl("body_gyro_", x)){
		df <- read.table(file=x)
		body.gyro <<- rbind (body.gyro, df)
		print (paste(x, " imported"))
	}
	else if (grepl("total_acc_", x)){
		df <- read.table(file=x)
		total.acc <<- rbind (total.acc, df)
		print (paste(x, " imported"))
	}
	else if (grepl("subject_", x)){
		df <- read.table(file=x)
		subjects <<- rbind (subjects, df)
		print (paste(x, " imported"))
	}
	else if (grepl("X_", x)){
		df <- read.table(file=x)
		experiences <<- rbind (experiences, df)
		print (paste(x, " imported"))
	}
	else if (grepl("y_", x) &  !grepl("activity_labels.txt", x)){
		df <- read.table(file=x)
		labels <<- rbind (labels, df)
		print (paste(x, " imported"))
	}
	 if (x == "features.txt"){
		features <<- read.table("features.txt", sep= " ")
		print (paste(x, " imported"))
	}
	else {
		print (paste(x, " not imported"))
	}
})

setwd("..")

# File features.txt indicates the colnames of X_*.txt. 
# Apply information collected in features.txt to experiences column names

colnames(experiences) <- features[[2]]





