Getting and Cleaning Data Coursera Course
=====================

##Project Summary
You should create one R script called run_analysis.R that does the following. 

 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Script Dependencies
The script depends on plyr. Use `install.packages("plyr")` to install it if it is not already installed in your R distribution.

##How to run the script and produce tidy dataset

 1. Unzip [zip archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in a directory.
 2. Set the same directory as R working directory (`setwd("/home/username/directory_where_you_put_the_zip_file")`).
 3. Source the script to obtain a `second.dataset.txt` file (`source("run_analysis.R")`).
