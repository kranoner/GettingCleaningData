Getting and Cleaning Data
=========================
Coursera project - Jonathan Salfati - 27 Jul 2014
-------------------------------------------------

Project description
-------------------
Purpose of this project is to apply course material learned during the Getting and Cleaning Data course.

Course page: [link](https://class.coursera.org/getdata-005)

Project page: [link](https://class.coursera.org/getdata-005/human_grading)

More details in the [CodeBook.md](https://github.com/kranoner/GettingCleaningData/blob/master/CodeBook.md) file

R Script 
--------

To run the script please you must have the R sofware installed on your computer.
Script is <code>run_analysis.R</code>
The script uses data available from internet [getdata_projectfiles_UCI HAR Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Please unzip this archive under the same folder as the script. The dataset folder must be named <code>UCI HAR Dataset/<code>

Under R environment type:
<code>source("run_analysis.R")</code>
The script runs and writes the output <code>activityMeasure.csv</code> on the same folder where the R script was executed.
