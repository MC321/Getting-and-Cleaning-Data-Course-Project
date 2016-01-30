
 #Read the test, training datasets and features,activity_labels using read.table function

 library(data.table)
 featureNames<-read.table("samsungdata/features.txt")
 activityLabels<-read.table("samsungdata/activity_labels.txt")
 subjectTest<-read.table("samsungdata/test/subject_test.txt",header=FALSE)
 activityTest<-read.table("samsungdata/test/y_test.txt",header=FALSE)
 featuresTest<-read.table("samsungdata/test/X_test.txt",header=FALSE)
 subjectTrain<-read.table("samsungdata/train/subject_train.txt",header=FALSE)
 activityTrain<-read.table("samsungdata/train/y_train.txt",header=FALSE)
 featuresTrain<-read.table("samsungdata/train/X_train.txt",header=FALSE)

 #Merge the Test and Training datasets into one dataset
 subject <- rbind(subjectTrain, subjectTest)
 activity <- rbind(activityTrain, activityTest)
 features <- rbind(featuresTrain, featuresTest)

 #Name the variables of the merged dataset with names from features.txt and add subject and activity columns to the merged dataset
 colnames(features)<-t(featureNames[2])
 colnames(subject)<-"Subject"
 colnames(activity)<-"Activity"
 mergedData<-cbind(subject,activity,features)

 #Extract only the measurements on the mean and standard deviation for each measurement
 MeanSTDcolumns<-grep(".*Mean.*|.*std.*", names(mergedData), ignore.case=TRUE)
 RequiredDataset<-mergedData[,c(1,2,MeanSTDcolumns)]

 #Use descriptive activity names to name the activities in the data set
 RequiredDataset$Activity<-as.character(RequiredDataset$Activity)
 for (i in 1:6){
  RequiredDataset$Activity[RequiredDataset$Activity == i] <- as.character(activityLabels[i,2])
 }

 #Label the data set with descriptive variable names
 names(RequiredDataset)
 names(RequiredDataset)<-gsub("^t","time",names(RequiredDataset))
 names(RequiredDataset)<-gsub("^f","frequency",names(RequiredDataset))
 names(RequiredDataset)<-gsub("Acc","acceleration",names(RequiredDataset))
 names(RequiredDataset)<-gsub("mean()","mean",names(RequiredDataset))
 names(RequiredDataset)<-gsub("std()","std",names(RequiredDataset))
 names(RequiredDataset)<-gsub("Gyro","gyroscope",names(RequiredDataset))
 names(RequiredDataset)<-gsub("Mag","magnitude",names(RequiredDataset))
 names(RequiredDataset)<-gsub("Freq","frequency",names(RequiredDataset))
 names(RequiredDataset)<-gsub("BodyBody","body",names(RequiredDataset))
 names(RequiredDataset)<-gsub("tBody","timebody",names(RequiredDataset))
 names(RequiredDataset)<-gsub("-",".",names(RequiredDataset))
 names(RequiredDataset)<-tolower(names(RequiredDataset))

 #Create a second, independent tidy data set with the average of each variable for each activity and each subject
 RequiredDataset$activity<-as.factor(RequiredDataset$activity)
 RequiredDataset$subject<-as.factor(RequiredDataset$subject)
 library(plyr)
 TidyData<-ddply(RequiredDataset,c("subject","activity"),numcolwise(mean))
 write.table(TidyData, file = "Tidy.txt", row.names = FALSE)


