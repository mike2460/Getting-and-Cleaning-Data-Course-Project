# Getting and Cleaning Data project
# Mike Hnat
# July 25, 2015

# Set my current dir to my extracted zip file location.  You may need to alter this to run on your system.
setwd("~/GaCD/UCI HAR Dataset/")

# Load raw training data into data frames

df_x_train_fea		<- read.table("train/X_train.txt", 		 header=FALSE)	#Features Training
df_y_train_act	 	<- read.table("train/Y_train.txt", 		 header=FALSE)	#Activities Training
df_s_train_sub		<- read.table("train/subject_train.txt", header=FALSE)	#Subject Training

# Now load raw testing data into data frames

df_x_test_fea		<- read.table("test/X_test.txt",		header=FALSE)	#Features Testing
df_y_test_act		<- read.table("test/Y_test.txt", 		header=FALSE)	#Activities Testing
df_s_test_sub		<- read.table("test/subject_test.txt", 	header=FALSE) 	#Subject Testing

# Load features.txt into a data frame

df_features			<- read.table("features.txt", 			header=FALSE)

# Load the activity labels into a data frame

df_activity_labels 	<- read.table("activity_labels.txt",	header=FALSE)

### Requirement 1 - Merge training and test sets to create one dataset

# Use rbind to aggregate training, test and subject data into data tables by row
df_x_full_fea		<- rbind(df_x_train_fea, df_x_test_fea)
df_y_full_act		<- rbind(df_y_train_act, df_y_test_act)
df_s_full_sub		<- rbind(df_s_train_sub, df_s_test_sub)

# Set variable names
names(df_x_full_fea) <- df_features$V2
names(df_y_full_act) <- c("Activity")
names(df_s_full_sub) <- c("Subject")

# Merge columns into all_data dataframe
df_merge1   	<- cbind(df_s_full_sub, df_y_full_act)
df_all_data 	<- cbind(df_x_full_fea, df_merge1)

### Requirement 2 - Extract only the measurements on the mean and standard deviation for each measurement. 
# Find names of features that contain mean() or std()
df_sd_features <- df_features$V2[grep("mean\\(\\)|std\\(\\)", df_features$V2)]

# Create a subest of the df_all_data data frame per the selected Features names
fea_names 	<- c(as.character(df_sd_features), "Subject", "Activity")
df_all_data <- subset(df_all_data, select=fea_names)

### Requirement 3 - Use descriptive activity names to name the activities in the data set
# Factor activity names from activity labels into dataset
df_all_data$Activity <- factor(df_all_data$Activity, levels = df_activity_labels[,1], labels = df_activity_labels[,2])

### Requirement 4 - Appropriately labels the data set with descriptive variable names. 
# Remove parentheses from variable names
names(df_all_data)	<- gsub('\\(|\\)', "", names(df_all_data))

# Replace -t with time and -f with frequency in variable names
names(df_all_data)	<- gsub('^t', 'Time_', names(df_all_data))
names(df_all_data)	<- gsub('^f', 'Frequency_', names(df_all_data))

# Rename .std and .mean endings
names(df_all_data)	<- gsub('\\-mean', '_Mean', names(df_all_data))
names(df_all_data)	<- gsub('\\-std', '_StandardDeviation', names(df_all_data))

# Change -X, -Y, -Z to .X, .Y, .Z for consistency in variable delimiters
names(df_all_data)	<- gsub('\\-X', '_X', names(df_all_data))
names(df_all_data)	<- gsub('\\-Y', '_Y', names(df_all_data))
names(df_all_data)	<- gsub('\\-Z', '_Z', names(df_all_data))

# Improve description of particular name shorthand used in original dataset
names(df_all_data)	<- gsub('Acc', 'Acceleration', names(df_all_data))
names(df_all_data)	<- gsub('Mag', 'Magnitude', names(df_all_data))
names(df_all_data)	<- gsub('BodyBody', 'Body', names(df_all_data))

### Requirement 5 - From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

df_all_data_2	<-aggregate(. ~Subject + Activity, df_all_data, mean)
df_all_data_2	<- df_all_data_2[order(df_all_data_2$Subject, df_all_data_2$Activity),]
write.table(df_all_data_2, file = "tidydata.txt", row.name=FALSE)