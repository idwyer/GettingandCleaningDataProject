# Getting and Cleaning Data - Assignment

Student: Ian Dwyer

## Assignment Information
The assignment is to download data collected from a series of test subjects that had a samsung smart phone attached to their waste. Each subject performed a series of movements and data was collected from the acceleromater and gyroscope.

Each subject was placed in one of two groups, test group and a train group.

###Data Files
- 'features_info.txt': Shows information about the variables used on the feature vector.

* features.txt: This file contains the label for each observation variable.
* activity_labels.txt: Links the class labels with their activity name.
* train/X_train.txt: Train data set.
* train/y_train.txt: Activity peformed for each observation in the train data set.
* test/X_test.txt: Test data set.
* test/y_test.txt: Activity peformed for each observation in the test data set.
* train/subject_train.txt: Contains the subject for each observation in the train data set.
* test/subject_test.txt: Contains the subject for each observation in the test data set.

These are available in the folder Data. The file projectData.zip contains all files in a compressed file. The folder UCI HAR Dataset contains the unzipped files.

### Assignment Objective
For this assignment we must download the raw data and produce a tidy data set that calculates the average for only the Standard deviation and mean variables, by subject and activity.

## Script

### Overview

Project Script Name: run_analysis.R

Project Script output: avgbysubjectactivity.txt

Command to load the output file: read.table("./Project/Data/avgbysubjectactivity.txt", header=TRUE)

The run_analysis.R script will produce the requested tidy dataset. It will download the raw data files and unzip the files, placing them in the folder "./Project/Data" under your working directory. The script will then transform the data by merging the feature, subject, activity with the variable data. A tidy data set will be created that includes descriptive names and can be used to perform the analysis for the project. The result of the analysis is then written to the output file listed above.

### Script Details

* An id column is generated for each of the measruement data, subject data and lable data. The id is generated using the row number of the dataset. It is assumed that each of the datasets that we generate an id for are sorted in an identical way. These id columns are used to join the datasets together.

*Download the required raw data files. These files are compressed into a zip file so the zip file must be unzipped.

* The features.txt file contains the list of measurements collected in the study and it can be used to assign column names to the dataset collected in the study. When this data is loaded, I use the parameter "stringsAsFactors = FALSE" because it makes assigning the column names easier later on.

* Next I load the activity data into a data frame and assign column names to the data frame.

* I load the test and train data sets and combine them into one data set. Then an id column is generated for each record. This will be used later to join the subject and activity data.

* I load the label data for both the test and train groups which contains the activity performed for each observation. The two data sets are combined and an id column is generated for each record. This will be used to join to the test and train variable data.

* I load the test and train subject data into a data frame and  combine the two data sets into a single data frame. A descriptive columnm name is assigned and,  an id is generated for each record and stored in the data frame. The id will be used to join to the observation data.

* The list of activities is built by joining the label data and the activity data. 

* Using the features data, column names are assigned to the combined train and test data sets. I add the column name for the id column I generated to the feature data before using it to assign the column names to the data set.

* Since only the measurements for Standard deviation STD and mean are required for the analysis, I remove al other obervation variables.

* Column names are converted to lower case and special characters are removed. 

* The observation data, activity data and subject data is joined together to produce one data set that can be used for our analysis. When I join the data the observation data is always the "y" data frame in the merge command so that all the measurements come after the subject and activity information.

* The dataset is then melted by subject and activity. The melted data set is then cast to calculate the average of each measurement by subject and activity. The melt/dcast functions are in the R package reshape2 so that package must be loaded. The melt/dcast approach was used because it conveniently removes the id column I generated from the dataset. This column is not required in the final datset. 

* I add "average" as a prefix to each measurement column to identify that the column represents an average and write the resulting tidy data frame out to the file listed above.

### R Version Information
The script was run in R-Studio (version 0.99.896) with R version 3.25,  on a computer running Windows 10. 

## Final File Output
The final output that is written to the output file contains the requested tidy data. The output contains an average of each measurement by subject and activity. Only the STD and mean measurements from the original data sets are included.

The final dataset is tidy because all of the columns have descriptive names. Each row contains one observation and each column contains one measure. For this project I used a wide data set as the final output because, based on the objective ( produce the average of each measurement by subject and activity), one observation consists of a subject and an activity. There is also no requirement in the objective to aggregate across multiple measurements.