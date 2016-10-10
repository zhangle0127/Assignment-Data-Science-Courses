setwd("F:/pscourse/COURSERA/Getting and Cleaning Data")
url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){dir.create("./data")}
#download the zip file
download.file(url,destfile="./data/Dataset.zip")
# unzip("./data/Dataset.zip")
unzip("./data/Dataset.zip",exdir="./data")
# show all the files in the unzip folder UCI HAR Dataset
list.files("./data/UCI HAR Dataset",recursive=T)
path=file.path(getwd(),"data/UCI HAR Dataset")

# read the activity files:train/subject_train.txt',test/subject_train.txt'
# Each row identifies the subject who performed the activity for each window sample
activityLables <- read.table(file.path(path,"activity_labels.txt"))
ActivityTest  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE)
ActivityTrain <- read.table(file.path(path, "train", "Y_train.txt"),header = FALSE)

features <- read.table(file.path(path,"features.txt"))

setTest<-read.table(file.path(path,"test","X_test.txt"))
setTrain<-read.table(file.path(path,"train","X_train.txt"))

subjectTest<-read.table(file.path(path,"test","subject_test.txt"))
subjectTrain<-read.table(file.path(path,"train","subject_train.txt"))

#1#Merges the training and the test sets to create one data set.
# 1.Concatenate by rows
dataset=rbind(setTrain,setTest)
subject=rbind(subjectTrain,subjectTest)
activity=rbind(ActivityTrain,ActivityTest)
# 2 names
names(dataset)<-features[,2]
names(subject)<-"subject"
names(activity)<-"activity"
# 2 merge cols
dt<-cbind(subject,activity,dataset)

#2# Extracts only the measurements on the mean and standard deviation for each measurement.
dts<-dt[,grepl("subject|activity|mean\\(\\)|std\\(\\)",names(dt))]
 ncol(dts) #68
# dts<-select(dt, grep("[Mm]ean|std",names(dt))#错

#3# Uses descriptive activity names to name the activities in the data set
# factorize variable
dts$activity<-factor(x = dts$activity, levels=activityLables$V1,labels = activityLables$V2)
head(dts$activity)

#4# Appropriately labels the data set with descriptive variable names.
# "features_info.txt"
"accelerometer" tAcc-XYZ
"gyroscope" tGyro-XYZ. 
"time" t
"magnitude" tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag
"frequency" f
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

# fixed=TURE 不使用 regular expression
names(dts)<-gsub("[Az]cc","Accelerometer",names(dts))
names(dts)<-gsub("Gyro","Gyroscope",names(dts))
names(dts)<-gsub("^t","time",names(dts))
names(dts)<-gsub("^f","frequency",names(dts))
names(dts)<-gsub("Mag","Magnitude",names(dts))
names(dts)<-gsub("BodyBody","Body",names(dts))
names(dts)<-gsub("-X","Xaxis",names(dts))
names(dts)<-gsub("-Y","Yaxis",names(dts))
names(dts)<-gsub("-Z","Zaxis",names(dts))
names(dts)<-gsub("-mean\\(\\)","Mean",names(dts))
names(dts)<-gsub("-std\\(\\)","Std",names(dts))

#5# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
tidy_dts <- aggregate(.~subject+activity,data=dts,mean)
write.table(tidy_dts,"G:/rgit/getclean/tidy_dts.txt")

