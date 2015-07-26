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



Additionally, the following variable name modifications were performed:

1. Removed parenthesis from any variable names.  (Ex. mean() -> mean, etc)
2. Replaced -t with 'Time _' and -f with 'Frequency _' in any variable names.
3. Replaced -mean and -std with _ Mean and _ StandardDeviation in any variable names to eliminate dashes.
4. Changed -X, -Y, -Z with _ X, _ Y, _Z in any variable names to eliminate dashes.
5. Added some descriptions of name shorthand in variable names
    + 'Acc' -> Acceleration
    + 'Mag' -> Magnitude
    + 'BodyBody' -> 'Body'


##Identifiers

Subject  --  Individual for whom multiple activities were recorded in the dataset.  (ranges from 1-30)
Activity --  Type of activity tracked for each individual. (One of 6 activity types: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)

##Measurements

"Time _ BodyAcceleration _ Mean_X" 
"Time _ BodyAcceleration _ Mean_Y" 
"Time _ BodyAcceleration _ Mean_Z" 
"Time _ BodyAcceleration _ StandardDeviation_X" 
"Time _ BodyAcceleration _ StandardDeviation_Y" 
"Time _ BodyAcceleration _ StandardDeviation_Z" 
"Time _ GravityAcceleration _ Mean_X" 
"Time _ GravityAcceleration _ Mean_Y" 
"Time _ GravityAcceleration _ Mean_Z" 
"Time _ GravityAcceleration _ StandardDeviation_X" 
"Time_ GravityAcceleration _ StandardDeviation_Y" 
"Time_ GravityAcceleration _ StandardDeviation_Z" 
"Time_ BodyAccelerationJerk _ Mean_X" 
"Time_ BodyAccelerationJerk _ Mean_Y" 
"Time_ BodyAccelerationJerk _ Mean_Z" 
"Time_ BodyAccelerationJerk _ StandardDeviation_X" 
"Time_ BodyAccelerationJerk _ StandardDeviation_Y" 
"Time_ BodyAccelerationJerk _ StandardDeviation_Z" 
"Time_ BodyGyro_ Mean_X" 
"Time_ BodyGyro_ Mean_Y" 
"Time_ BodyGyro_ Mean_Z" 
"Time_ BodyGyro_ StandardDeviation_X" 
"Time_ BodyGyro_ StandardDeviation_Y" 
"Time_ BodyGyro_ StandardDeviation_Z" 
"Time_ BodyGyroJerk_ Mean_X" 
"Time_ BodyGyroJerk_ Mean_Y" 
"Time_ BodyGyroJerk_ Mean_Z" 
"Time_ BodyGyroJerk_ StandardDeviation_X" 
"Time_ BodyGyroJerk_ StandardDeviation_Y" 
"Time_ BodyGyroJerk_ StandardDeviation_Z" 
"Time_ BodyAccelerationMagnitude_Mean" 
"Time_ BodyAccelerationMagnitude_StandardDeviation" 
"Time_ GravityAccelerationMagnitude_Mean" 
"Time_ GravityAccelerationMagnitude_StandardDeviation" 
"Time_ BodyAccelerationJerkMagnitude_Mean" 
"Time_ BodyAccelerationJerkMagnitude_StandardDeviation" 
"Time_ BodyGyroMagnitude_Mean" 
"Time_ BodyGyroMagnitude_StandardDeviation" 
"Time_ BodyGyroJerkMagnitude_Mean" 
"Time_ BodyGyroJerkMagnitude_StandardDeviation" 
"Frequency_ BodyAcceleration_ Mean_X" 
"Frequency_ BodyAcceleration_ Mean_Y" 
"Frequency_ BodyAcceleration_ Mean_Z" 
"Frequency_ BodyAcceleration_ StandardDeviation_X" 
"Frequency_ BodyAcceleration_ StandardDeviation_Y" 
"Frequency_ BodyAcceleration_ StandardDeviation_Z" 
"Frequency_ BodyAccelerationJerk_ Mean_X" 
"Frequency_ BodyAccelerationJerk_ Mean_Y" 
"Frequency_ BodyAccelerationJerk_ Mean_Z" 
"Frequency_ BodyAccelerationJerk_ StandardDeviation_X" 
"Frequency_ BodyAccelerationJerk_ StandardDeviation_Y" 
"Frequency_ BodyAccelerationJerk_ StandardDeviation_Z" 
"Frequency_ BodyGyro_ Mean_X" 
"Frequency_ BodyGyro_ Mean_Y" 
"Frequency_ BodyGyro_ Mean_Z" 
"Frequency_ BodyGyro_ StandardDeviation_X" 
"Frequency_ BodyGyro_ StandardDeviation_Y" 
"Frequency_ BodyGyro_ StandardDeviation_Z" 
"Frequency_ BodyAccelerationMagnitude_Mean" 
"Frequency_ BodyAccelerationMagnitude_StandardDeviation" 
"Frequency_ BodyAccelerationJerkMagnitude_Mean" 
"Frequency_ BodyAccelerationJerkMagnitude_StandardDeviation" 
"Frequency_ BodyGyroMagnitude_Mean" 
"Frequency_ BodyGyroMagnitude_StandardDeviation" 
"Frequency_ BodyGyroJerkMagnitude_Mean" 
"Frequency_ BodyGyroJerkMagnitude_StandardDeviation"

