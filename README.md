
The following steps explain how the run_analysis.R script works to produce the required output for the project which is the Tidy dataset text file.

1. Download the dataset using the link "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip".
2. Unzip the file and save the dataset in the working directory and rename the UCI HAR Dataset as "samsungdata".
3. Download the run_analysis.R script to your working directory.
4. Load R studio and set your working directory using setwd().
5. To run the run_analysis.R code, you need to install (data.table) and (plyr) packages.
6. Load the R script using source("run_analysis.R")
7. After the R script is executed, a tidy dataset with name "TidyData" can be found with 180 observations of 88 variables and a Tidy.txt file is created in your working directory.

The run_analysis.R code does the following to generate the tidy dataset output:

1. Loads the Test and Training datasets along with the features and activity_labels using read.table function.
2. Merges the Test and Training datasets into one dataset using rbind function.
3. Names the variables of the mergedData with names from features.txt and add subject and activity columns to the merged Dataset.
4. Extracts only the columns with measurements on the mean and standard deviation for each measurement.
5. Makes a dataframe called "RequiredDataset" with subject,activity and meanSTD columns.
6. Replaces the Activity Ids with activity labels.
7. Labels the variable names of the "RequiredDataset" with descriptive names.
8. Using plyr package and ddply function,  creates a final, independent tidy data set with the average of each variable for each activity and each subject.
9. Using write.table function creates a Tidy.txt file in the working directory.
=======
# Getting-and-Cleaning-Data-Course-Project
Creating tidy dataset



