## Raw Data

## Tidy Data Set

The tidy dataset contains the averages of all features of the standard deviation and mean values of the raw data set.
Additionally, the following variable name modifications were performed:

1. Removed parenthesis from any variable names.  (Ex. mean() -> mean, etc)
2. Replaced -t with 'Time' and -f with 'Frequency' in any variable names.
3. Replaced -mean and -std with .Mean and .StandardDeviation in any variable names to eliminate dashes.
4. Changed -X, -Y, -Z with .X, .Y, .Z in any variable names to eliminate dashes.
5. Added some descriptions of name shorthand in variable names
    + 'Acc' -> Acceleration
    + 'Mag' -> Magnitude
    + 'BodyBody' -> 'Body'


##Identifiers

Subject  --  Individual for whom multiple activities were recorded in the dataset.  
Activity --  Type of activity tracked for each individual. 

##Measurements

Time.BodyAcceleration.Mean.X
Time.BodyAcceleration.Mean.Y
Time.BodyAcceleration.Mean.Z
Time.BodyAcceleration.StandardDeviation.X
Time.BodyAcceleration.StandardDeviation.Y
Time.BodyAcceleration.StandardDeviation.Z
Time.GravityAcceleration.Mean.X
Time.GravityAcceleration.Mean.Y
Time.GravityAcceleration.Mean.Z
Time.GravityAcceleration.StandardDeviation.X
Time.GravityAcceleration.StandardDeviation.Y
Time.GravityAcceleration.StandardDeviation.Z
Time.BodyAccelerationJerk.Mean.X
Time.BodyAccelerationJerk.Mean.Y
Time.BodyAccelerationJerk.Mean.Z
Time.BodyAccelerationJerk.StandardDeviation.X
Time.BodyAccelerationJerk.StandardDeviation.Y
Time.BodyAccelerationJerk.StandardDeviation.Z
Time.BodyGyro.Mean.X
Time.BodyGyro.Mean.Y
Time.BodyGyro.Mean.Z
Time.BodyGyro.StandardDeviation.X
Time.BodyGyro.StandardDeviation.Y
Time.BodyGyro.StandardDeviation.Z
Time.BodyGyroJerk.Mean.X
Time.BodyGyroJerk.Mean.Y
Time.BodyGyroJerk.Mean.Z
Time.BodyGyroJerk.StandardDeviation.X
Time.BodyGyroJerk.StandardDeviation.Y
Time.BodyGyroJerk.StandardDeviation.Z
Time.BodyAccelerationMagnitude.Mean
Time.BodyAccelerationMagnitude.StandardDeviation
Time.GravityAccelerationMagnitude.Mean
Time.GravityAccelerationMagnitude.StandardDeviation
Time.BodyAccelerationJerkMagnitude.Mean
Time.BodyAccelerationJerkMagnitude.StandardDeviation
Time.BodyGyroMagnitude.Mean
Time.BodyGyroMagnitude.StandardDeviation
Time.BodyGyroJerkMagnitude.Mean
Time.BodyGyroJerkMagnitude.StandardDeviation
Frequency.BodyAcceleration.Mean.X
Frequency.BodyAcceleration.Mean.Y
Frequency.BodyAcceleration.Mean.Z
Frequency.BodyAcceleration.StandardDeviation.X
Frequency.BodyAcceleration.StandardDeviation.Y
Frequency.BodyAcceleration.StandardDeviation.Z
Frequency.BodyAccelerationJerk.Mean.X
Frequency.BodyAccelerationJerk.Mean.Y
Frequency.BodyAccelerationJerk.Mean.Z
Frequency.BodyAccelerationJerk.StandardDeviation.X
Frequency.BodyAccelerationJerk.StandardDeviation.Y
Frequency.BodyAccelerationJerk.StandardDeviation.Z
Frequency.BodyGyro.Mean.X
Frequency.BodyGyro.Mean.Y
Frequency.BodyGyro.Mean.Z
Frequency.BodyGyro.StandardDeviation.X
Frequency.BodyGyro.StandardDeviation.Y
Frequency.BodyGyro.StandardDeviation.Z
Frequency.BodyAccelerationMagnitude.Mean
Frequency.BodyAccelerationMagnitude.StandardDeviation
Frequency.BodyAccelerationJerkMagnitude.Mean
Frequency.BodyAccelerationJerkMagnitude.StandardDeviation
Frequency.BodyGyroMagnitude.Mean
Frequency.BodyGyroMagnitude.StandardDeviation
Frequency.BodyGyroJerkMagnitude.Mean
Frequency.BodyGyroJerkMagnitude.StandardDeviation


##Activities

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING
