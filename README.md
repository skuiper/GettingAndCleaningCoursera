### GettingAndCleaning Project


The purpose of this project is to to collect, work with, and clean a data set.

There are 5 steps to this project that are clearly identified within the run_analysis.R file.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#### Data Description
The data, collected from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphone] (UCI Machine Learning Repository) is from experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

In addition to grouping by

* activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* subject: a value of 1 to 30, each representing a particular subjet

There are 66 final variables calculated from original data collected by the Samsung Galaxy S II:

"TimeBodyAccelerometer-mean()-X" 
"TimeBodyAccelerometer-mean()-Y" 
"TimeBodyAccelerometer-mean()-Z" 
"TimeBodyAccelerometer-std()-X" 
"TimeBodyAccelerometer-std()-Y" 
"TimeBodyAccelerometer-std()-Z" "TimeGravityAccelerometer-mean()-X" "TimeGravityAccelerometer-mean()-Y" "TimeGravityAccelerometer-mean()-Z" "TimeGravityAccelerometer-std()-X" "TimeGravityAccelerometer-std()-Y" "TimeGravityAccelerometer-std()-Z" "TimeBodyAccelerometerJerk-mean()-X" "TimeBodyAccelerometerJerk-mean()-Y" "TimeBodyAccelerometerJerk-mean()-Z" "TimeBodyAccelerometerJerk-std()-X" "TimeBodyAccelerometerJerk-std()-Y" "TimeBodyAccelerometerJerk-std()-Z" 
"TimeBodyGyroscope-mean()-X" 
"TimeBodyGyroscope-mean()-Y" 
"TimeBodyGyroscope-mean()-Z" 
"TimeBodyGyroscope-std()-X" 
"TimeBodyGyroscope-std()-Y" 
"TimeBodyGyroscope-std()-Z" 
"TimeBodyGyroscopeJerk-mean()-X" 
"TimeBodyGyroscopeJerk-mean()-Y" 
"TimeBodyGyroscopeJerk-mean()-Z" 
"TimeBodyGyroscopeJerk-std()-X" 
"TimeBodyGyroscopeJerk-std()-Y" 
"TimeBodyGyroscopeJerk-std()-Z" "TimeBodyAccelerometerMagnitude-mean()" "TimeBodyAccelerometerMagnitude-std()" "TimeGravityAccelerometerMagnitude-mean()" "TimeGravityAccelerometerMagnitude-std()" "TimeBodyAccelerometerJerkMagnitude-mean()" "TimeBodyAccelerometerJerkMagnitude-std()" "TimeBodyGyroscopeMagnitude-mean()" "TimeBodyGyroscopeMagnitude-std()" "TimeBodyGyroscopeJerkMagnitude-mean()" "TimeBodyGyroscopeJerkMagnitude-std()" "FrequencyBodyAccelerometer-mean()-X" "FrequencyBodyAccelerometer-mean()-Y" "FrequencyBodyAccelerometer-mean()-Z" "FrequencyBodyAccelerometer-std()-X" "FrequencyBodyAccelerometer-std()-Y" "FrequencyBodyAccelerometer-std()-Z" "FrequencyBodyAccelerometerJerk-mean()-X" "FrequencyBodyAccelerometerJerk-mean()-Y" "FrequencyBodyAccelerometerJerk-mean()-Z" "FrequencyBodyAccelerometerJerk-std()-X" "FrequencyBodyAccelerometerJerk-std()-Y" "FrequencyBodyAccelerometerJerk-std()-Z" "FrequencyBodyGyroscope-mean()-X" "FrequencyBodyGyroscope-mean()-Y" "FrequencyBodyGyroscope-mean()-Z" "FrequencyBodyGyroscope-std()-X" 
"FrequencyBodyGyroscope-std()-Y" 
"FrequencyBodyGyroscope-std()-Z" "FrequencyBodyAccelerometerMagnitude-mean()" "FrequencyBodyAccelerometerMagnitude-std()" "FrequencyBodyAccelerometerJerkMagnitude-mean()" "FrequencyBodyAccelerometerJerkMagnitude-std()" "FrequencyBodyGyroscopeMagnitude-mean()" "FrequencyBodyGyroscopeMagnitude-std()" "FrequencyBodyGyroscopeJerkMagnitude-mean()" "FrequencyBodyGyroscopeJerkMagnitude-std()"
