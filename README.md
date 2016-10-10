# Getting-and-Cleaning-Data
The assignment submission of the course project for the Johns Hopkins Getting and Cleaning Data course.

## Data source
* The data collected from the accelerometers from the Samsung Galaxy S smartphone.    
A full description of the data used in this project can be found at [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* The raw data for the project
[Raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
	
## Content Files
`CodeBook.md` describes the variables, the data, and work that was performed to clean up the data.  	

`run_analysis.R` contains all the code to perform the analyses described in the 5 steps. The script does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The tidy dataset is shown in the file `tidy_dts.txt`.

## Dependicies
`dplyr`

