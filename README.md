## Getting-and-Cleaning-Data-Course-Project

###Purpose: 

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.


###Repository Contents:

This repository contains the following files:

* CodeBook.MD 		--  contains specifics about how the run_Analysis.R script works and particulars about the output file contents and organization
* README.MD  		--  this file, contains information about source data and script dependencies as well as the organizational priciples used for the datasets
* run_Analysis.R 	--  script to generate the tinydata.txt file
* tinydata.txt 		--	output of the run_Analysis.R script against the full dataset


###Dataset Information and Download Links:

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Tidy Data Principles Followed:

In section 2.3 of Hadley [link]http://vita.had.co.nz/papers/tidy-data.pdf, he references Codd's 3rd normal form as it might pertain to the constraints of statistical language and when focused on a single dataset.  This suggests that tidy data be organized by the following 3 core rules:  

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

To that end, this script will generate a table organized according to these principles.  
Each row of the table will take the specific Activity of a specific Subject, then list the average of each measurement Variable across the entire data set.  Each column of the table represents a different variable, as indicated by the column heading.

By formatting it like this, we follow rules 1 and 2, with the understanding that each specific Activity/Subject pairing is considered to be an observation.  
The table is ordered first by Subject, then by Activity which allows us to easily look at the set of Variable averages for a given user.  While this seemed like the most straightforward way to organize this dataset, there are certainly arguments to be made in favor of other approaches.


###Description of run_Analysis.R:

This repository contains an R script called run_analysis.R.
Additionally, it contains a copy of the output of the data generated by this script called 'tinydata.txt'.

The script performs the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. This will generate an output file in the working directory called 'tinydata.txt'


###Script Dependencies:

The version of the script uploaded here has sets a working directory on line 9.
The dataset download extracts itself to a folder named 'UCI HAR Dataset'.
You need to modify the value of the setwd command in line 9 to point to this folder before attempting to run it.   

* Operating system used was Windows 8.1.
* Script was testing on RStudio v.0.99.441 and R v.3.2.0.
* Script generation was performed using Sublime Text build 3083.



