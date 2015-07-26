## Raw Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.  

For each record it is provided:  

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
2. Triaxial Angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables. 
4. Its activity label. 
5. An identifier of the subject who carried out the experiment.

The dataset includes the following files:  

1. 'README.txt'
2. 'features_info.txt': Shows information about the variables used on the feature vector.
3. 'features.txt': List of all features.
4. 'activity_labels.txt': Links the class labels with their activity name.
5. 'train/X_train.txt': Training set.
6. 'train/y_train.txt': Training labels.
7. 'test/X_test.txt': Test set.
8. 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

1. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
2  'train/Inertial Signals/total_acc _ x _ train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total _ acc _ x _ train.txt' and 'total _ acc _ z _ train.txt' files for the Y and Z axis. 
3. 'train/Inertial Signals/body _ acc _ x _train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
4. 'train/Inertial Signals/body _ gyro _ x _ train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws
Information reposted from README file of full dataset download from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Tidy Data Set Modifications

### Merge test and training datasets together

The script combines the test and training data from the features, activities and subject data files into one dataset.
At this stage, the variable names used are the ones found in the features.txt file.

### Create subset of mean and standard deviation data

Next the script uses a grep command: grep("mean\\(\\)|std\\(\\)" to find all feature names that have 'mean' or 'std' in them.
Once those names have been found, a subset of the full data set is generated using those names.

### Add descriptive activity names

The script then adds a column that translated the activity label into a more descriptive activity name based on the label/name table in the file 'activity_labels.txt'.  

### Appropriately label dataset with descriptive variable names

The desired outcome of this step is to clean up the variable names in an effort to make them somewhat more descriptive, consistent, and potentially easier to work with in R.  The biggest concern I had was in potentially altering or misinterpreting a variable name in an effort to make it clearer or more descriptive. I followed some recommendations in [link]http://ivanhanigan.github.io/datasharing/datasharing.html and [link]http://vita.had.co.nz/papers/tidy-data.pdf that suggested using underscores rather than dots in variable names as separators.  The script also removes parentheses, expanded some abbreviations, and cleaned up a potentially confusing 'BodyBody' entry.

The following variable name modifications were performed:

1. Removed parenthesis from any variable names.  (Ex. mean() -> mean, etc)
2. Replaced -t with 'Time_' and -f with 'Frequency_' in any variable names.
3. Replaced -mean and -std with _Mean and _StandardDeviation in any variable names to eliminate dashes.
4. Changed -X, -Y, -Z with _X, _Y, _Z in any variable names to eliminate dashes.
5. Added some descriptions of name shorthand in variable names
    + 'Acc' -> Acceleration
    + 'Mag' -> Magnitude
    + 'BodyBody' -> 'Body'

### Generate a tidy dataset with average of each variable of each activity of each subject

The script follows the rules of Codd's 3rd form (as referenced in the README file), and does this by creating a separate data set from the full data set.  It uses the aggregate() function to calculate the mean for each variable as broken down by Subject and Activity.  It then uses the order() function to sort the dataset, first by Subject, then by Activity.  Finally it uses the write.table() function as prescribed by the course requirements to write the output file 'tidydata.txt' to the current working directory.


##Variables listed in tidydata.txt output file

###Identifiers

* Subject  --  Individual for whom multiple activities were recorded in the dataset.  (ranges from 1-30)
* Activity --  Type of activity tracked for each individual. (One of 6 activity types: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)

###Measurements

* Time_BodyAcceleration_Mean_X
* Time_BodyAcceleration_Mean_Y
* Time_BodyAcceleration_Mean_Z
* Time_BodyAcceleration_StandardDeviation_X
* Time_BodyAcceleration_StandardDeviation_Y
* Time_BodyAcceleration_StandardDeviation_Z
* Time_GravityAcceleration_Mean_X
* Time_GravityAcceleration_Mean_Y
* Time_GravityAcceleration_Mean_Z
* Time_GravityAcceleration_StandardDeviation_X
* Time_GravityAcceleration_StandardDeviation_Y
* Time_GravityAcceleration_StandardDeviation_Z
* Time_BodyAccelerationJerk_Mean_X
* Time_BodyAccelerationJerk_Mean_Y
* Time_BodyAccelerationJerk_Mean_Z
* Time_BodyAccelerationJerk_StandardDeviation_X
* Time_BodyAccelerationJerk_StandardDeviation_Y
* Time_BodyAccelerationJerk_StandardDeviation_Z
* Time_BodyGyro_Mean_X
* Time_BodyGyro_Mean_Y
* Time_BodyGyro_Mean_Z
* Time_BodyGyro_StandardDeviation_X
* Time_BodyGyro_StandardDeviation_Y
* Time_BodyGyro_StandardDeviation_Z
* Time_BodyGyroJerk_Mean_X
* Time_BodyGyroJerk_Mean_Y
* Time_BodyGyroJerk_Mean_Z
* Time_BodyGyroJerk_StandardDeviation_X
* Time_BodyGyroJerk_StandardDeviation_Y
* Time_BodyGyroJerk_StandardDeviation_Z
* Time_BodyAccelerationMagnitude_Mean
* Time_BodyAccelerationMagnitude_StandardDeviation
* Time_GravityAccelerationMagnitude_Mean
* Time_GravityAccelerationMagnitude_StandardDeviation
* Time_BodyAccelerationJerkMagnitude_Mean
* Time_BodyAccelerationJerkMagnitude_StandardDeviation
* Time_BodyGyroMagnitude_Mean
* Time_BodyGyroMagnitude_StandardDeviation
* Time_BodyGyroJerkMagnitude_Mean
* Time_BodyGyroJerkMagnitude_StandardDeviation
* Frequency_BodyAcceleration_Mean_X
* Frequency_BodyAcceleration_Mean_Y
* Frequency_BodyAcceleration_Mean_Z
* Frequency_BodyAcceleration_StandardDeviation_X
* Frequency_BodyAcceleration_StandardDeviation_Y
* Frequency_BodyAcceleration_StandardDeviation_Z
* Frequency_BodyAccelerationJerk_Mean_X
* Frequency_BodyAccelerationJerk_Mean_Y
* Frequency_BodyAccelerationJerk_Mean_Z
* Frequency_BodyAccelerationJerk_StandardDeviation_X
* Frequency_BodyAccelerationJerk_StandardDeviation_Y
* Frequency_BodyAccelerationJerk_StandardDeviation_Z
* Frequency_BodyGyro_Mean_X
* Frequency_BodyGyro_Mean_Y
* Frequency_BodyGyro_Mean_Z
* Frequency_BodyGyro_StandardDeviation_X
* Frequency_BodyGyro_StandardDeviation_Y
* Frequency_BodyGyro_StandardDeviation_Z
* Frequency_BodyAccelerationMagnitude_Mean
* Frequency_BodyAccelerationMagnitude_StandardDeviation
* Frequency_BodyAccelerationJerkMagnitude_Mean
* Frequency_BodyAccelerationJerkMagnitude_StandardDeviation
* Frequency_BodyGyroMagnitude_Mean
* Frequency_BodyGyroMagnitude_StandardDeviation
* Frequency_BodyGyroJerkMagnitude_Mean
* Frequency_BodyGyroJerkMagnitude_StandardDeviation

