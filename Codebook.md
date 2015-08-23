# Codebook

## purpose
This codebook is meant to expand on the variables laid out in features_info.txt contained in the data folder obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For a full explaination of how these signals were collected and processed, refer to features_info.txt. This codebook will only cover the variables considered in the analysis, and how they are named.

## Selection
The following variables were selected for use in the analysis because they are the originaly estimated varibles in the study:
  - tBodyAcc-XYZ
  - tGravityAcc-XYZ
  - tBodyAccJerk-XYZ
  - tBodyGyro-XYZ
  - tBodyGyroJerk-XYZ
  - tBodyAccMag
  - tGravityAccMag
  - tBodyAccJerkMag
  - tBodyGyroMag
  - tBodyGyroJerkMag
  - fBodyAcc-XYZ
  - fBodyAccJerk-XYZ
  - fBodyGyro-XYZ
  - fBodyAccMag
  - fBodyAccJerkMag
  - fBodyGyroMag
  - fBodyGyroJerkMag

Of these variables, the ones that contain an XYZ component were seperated into their individual components. There are eight of these in total, leading to 24 seperate variables. The nine other measurements give a total of 33 measurements to be considered. For the analysis, both the mean and standard deviation were taken for each of the 33 measurements. This leads to a total of 66 variables in taken from the data itself.

In addition, two other variables were included:
  - subject
  - activity

These are included to correlate a subject with an activity and all the associated signals.

## Variables

### subject
The number used to identify the subject performing the associated activities. The values in the dataset range from 1 to 30. The variable in the dataset is named as followes:

  - subject

### activity
The name of the activity being performed by the subject. The possible values are:
  - LAYING
  - SITTING
  - STANDING
  - WALKING
  - WALKING_DOWNSTAIRS
  - WALKING_UPSTAIRS

The variable in the dataset is named as followes:
  - activity

###tBodyAcc-XYZ
Time domain body acceleration in XYZ axes.
Each axis is seperated and a mean and standard deviation are determined. The values are numeric, and range from -1 to +1. The variables in the dataset are named as followes:

  - timeBodyAccelerationMeanX
  - timeBodyAccelerationMeanY
  - timeBodyAccelerationMeanZ
  - timeBodyAccelerationStandardDeviationX
  - timeBodyAccelerationStandardDeviationY
  - timeBodyAccelerationStandardDeviationZ

tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

## timeGravityAccelerationMeanX
## timeGravityAccelerationMeanY
## timeGravityAccelerationMeanZ
## timeGravityAccelerationStandardDeviationX
## timeGravityAccelerationStandardDeviationY
## timeGravityAccelerationStandardDeviationZ
## timeBodyAccelerationJerkMeanX
## timeBodyAccelerationJerkMeanY
## timeBodyAccelerationJerkMeanZ
## timeBodyAccelerationJerkStandardDeviationX
## timeBodyAccelerationJerkStandardDeviationY
## timeBodyAccelerationJerkStandardDeviationZ
## timeBodyGyroMeanX
## timeBodyGyroMeanY
## timeBodyGyroMeanZ
## timeBodyGyroStandardDeviationX
## timeBodyGyroStandardDeviationY
## timeBodyGyroStandardDeviationZ
## timeBodyGyroJerkMeanX
## timeBodyGyroJerkMeanY
## timeBodyGyroJerkMeanZ
## timeBodyGyroJerkStandardDeviationX
## timeBodyGyroJerkStandardDeviationY
## timeBodyGyroJerkStandardDeviationZ
## timeBodyAccelerationMagnitudeMean
## timeBodyAccelerationMagnitudeStandardDeviation
## timeGravityAccelerationMagnitudeMean
## timeGravityAccelerationMagnitudeStandardDeviation
## timeBodyAccelerationJerkMagnitudeMean
## timeBodyAccelerationJerkMagnitudeStandardDeviation
## timeBodyGyroMagnitudeMean
## timeBodyGyroMagnitudeStandardDeviation
## timeBodyGyroJerkMagnitudeMean
## timeBodyGyroJerkMagnitudeStandardDeviation
## frequencyBodyAccelerationMeanX
## frequencyBodyAccelerationMeanY
## frequencyBodyAccelerationMeanZ
## frequencyBodyAccelerationStandardDeviationX
## frequencyBodyAccelerationStandardDeviationY
## frequencyBodyAccelerationStandardDeviationZ
## frequencyBodyAccelerationJerkMeanX
## frequencyBodyAccelerationJerkMeanY
## frequencyBodyAccelerationJerkMeanZ
## frequencyBodyAccelerationJerkStandardDeviationX
## frequencyBodyAccelerationJerkStandardDeviationY
## frequencyBodyAccelerationJerkStandardDeviationZ
## frequencyBodyGyroMeanX
## frequencyBodyGyroMeanY
## frequencyBodyGyroMeanZ
## frequencyBodyGyroStandardDeviationX
## frequencyBodyGyroStandardDeviationY
## frequencyBodyGyroStandardDeviationZ
## frequencyBodyAccelerationMagnitudeMean
## frequencyBodyAccelerationMagnitudeStandardDeviation
## frequencyBodyAccelerationJerkMagnitudeMean
## frequencyBodyAccelerationJerkMagnitudeStandardDeviation
## frequencyBodyGyroMagnitudeMean
## frequencyBodyGyroMagnitudeStandardDeviation
## frequencyBodyGyroJerkMagnitudeMean
## frequencyBodyGyroJerkMagnitudeStandardDeviation
