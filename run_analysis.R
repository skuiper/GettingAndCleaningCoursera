## Getting and Cleaning Data
# Project

library(data.table)
library(dplyr)
directory <- (getwd())

# Step 1: Merge the training and the test sets to create one data set (called data1)
testData_sub <- read.table("./test/subject_test.txt",header=FALSE)
testData <- read.table("./test/X_test.txt",header=FALSE)
testData_act <- read.table("./test/y_test.txt",header=FALSE)
trainData_sub <- read.table("./train/subject_train.txt",header=FALSE)
trainData <- read.table("./train/X_train.txt",header=FALSE)
trainData_act <- read.table("./train/y_train.txt",header=FALSE)
dataFeatures <- read.table("./features.txt",header=FALSE)

#bind the training and test datasets
subjdata <- rbind(trainData_sub,testData_sub)
actdata<- rbind(trainData_act, testData_act)
data<- rbind(trainData, testData)

#add column names to our data
names(subjdata)<-c("subject")
names(actdata)<- c("activity")
names(data)<- dataFeatures$V2

#now combine all the columns into one final dataset
data1 <- cbind(subjdata, actdata, data)
dim(data1)
# [1] 10299   563

# Step 2: Extracts only the measurements on the mean and standard deviation (std) for each measurement (called data2)
meansdnames <-  dataFeatures$V2[grep("mean\\(\\)|std\\(\\)", dataFeatures$V2)]
meansdcol <- c(as.character(meansdnames), "subject", "activity" )
str(meansdcol) # we have 66 columns that contain either mean or std

data2  <- subset(data1, select = meansdcol)
dim(data2)
# [1] 10299    68

# Step 3: Uses descriptive activity names to name the activities in the data set
actnames <- dataFeatures <- read.table("./activity_labels.txt",header=FALSE)
str(actnames)

# in order to join the data, both data frames need a columnn named "activity"
actnames <- rename(actnames, activity = V1)
data3 <- left_join(data2,actnames, by =  "activity")
#You can verify code with dim(data3) and table(data3$activity, data3$V2)
#[1] 10299    69
data3 <- select(data3, -activity)
data3 <- rename(data3, activity = V2)

# Step 4: Appropriately label the data set with descriptive variable names.
#Change BodyBody to Body.
names(data3)<-gsub("BodyBody", "Body", names(data3))

#Remove the abbreviations and replace them with full data names.
names(data3)<-gsub("^t", "Time", names(data3))
names(data3)<-gsub("^f", "Frequency", names(data3))
names(data3)<-gsub("Acc", "Accelerometer", names(data3))
names(data3)<-gsub("Gyro", "Gyroscope", names(data3))
names(data3)<-gsub("Mag", "Magnitude", names(data3))
names(data3)

# Step 5: From the data set in Step 4, creates a second, independent tidy 
# data set with the average of each variable for each activity and each subject

data4 <- group_by(data3, activity, subject)
data5 <- summarize_each(data4, funs(mean))

write.table(data5, file = "tidydata.txt",row.name=FALSE)

