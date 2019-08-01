## Reading the features list corresponding to the data
FeaturesList <- read.table("./UCI HAR Dataset/features.txt", col.names = c("Feature_No.", "Feature"))

## Reading the 3 Training files that provide the activity labels (1 column), 
## subject IDs (1 column), and data for each feature measured (561 columns).
TrainingData <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = FeaturesList$Feature)
TrainingLabels <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "Activity")
TrainingSubj <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")

## Reading the 3 Test files that provide the activity codes (1 column), 
## subject codes (1 column), and data for each feature measured (561 columns).
TestData <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = FeaturesList$Feature)
TestLabels <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "Activity")
TestSubj <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")

## Combining all 3 Training dataframes into a single dataframe with 563 columns.
## Similarly, combining all 3 Test dataframes into a single dataframe with 563 columns.
## Combining again the combined Training and combined Test data into a single large dataframe.
TestCombined <- cbind(TestData, TestLabels, TestSubj)
TrainingCombined <- cbind(TrainingData, TrainingLabels, TrainingSubj)
Alldata <- rbind(TestCombined, TrainingCombined)

## Subsetting only the data columns giving mean and standard deviation measurements (66 columns), while
## retaining the Activity and Subject columns since these are identifiers for all other data columns.
Summarydata <- Alldata[ ,(grep("mean|std|Activity|Subject", names(Alldata)))]
Summarydata <- subset(Summarydata, select=-c(grep("meanFreq", names(Summarydata))))

##Converting the Activity column to character class in order to edit the numerical values as text variables
Summarydata$Activity <- as.character(Summarydata$Activity)
## Replacing the values in the Activity column with the corresponding Activity name
Summarydata$Activity <- gsub("1", "Walking", Summarydata$Activity)
Summarydata$Activity <- gsub("2", "Walking upstairs", Summarydata$Activity)
Summarydata$Activity <- gsub("3", "Walking downstairs", Summarydata$Activity)
Summarydata$Activity <- gsub("4", "Sitting", Summarydata$Activity)
Summarydata$Activity <- gsub("5", "Standing", Summarydata$Activity)
Summarydata$Activity <- gsub("6", "Laying", Summarydata$Activity)

## Revising the metacharacters (".", "()", "_") in the column names for clarity,  
## and creating more descriptive variables by defining abbreviations (eg: Acc=Accelerometer)
names(Summarydata) <- gsub("\\.", "", names(Summarydata))
names(Summarydata) <- gsub("Acc", "Accelerometer", names(Summarydata))
names(Summarydata) <- gsub("Gyro", "Gyroscope", names(Summarydata))
names(Summarydata) <- gsub("^f", "Freq_", names(Summarydata))
names(Summarydata) <- gsub("^t", "Time_", names(Summarydata))
names(Summarydata) <- gsub("BodyBody", "Body", names(Summarydata))
names(Summarydata) <- gsub("X$", "-X", names(Summarydata))
names(Summarydata) <- gsub("Y$", "-Y", names(Summarydata))
names(Summarydata) <- gsub("Z$", "-Z", names(Summarydata))
names(Summarydata) <- gsub("mean", "_Mean", names(Summarydata))
names(Summarydata) <- gsub("std", "_Stdev", names(Summarydata))

## Creating a new dataset that gives the mean values of each variable for each subject during each activity. 
## Eliminating the original Subject and Activity columns so they dont duplicate the newly created columns
## Saved the new dataset as an independent file called "tidydata.txt" 
Aggregatedata <- aggregate(Summarydata, by=list("Activity"=Summarydata$Activity, "Subject"=Summarydata$Subject), FUN=mean)
Aggregatedata <- subset(Aggregatedata, select=-c(69:70))
write.table(Aggregatedata, "tidydata.txt", row.names=FALSE, col.names=TRUE)

## This is the final output of the script, opening as the object "tidydata"
tidydata <- read.table("./tidydata.txt", header=TRUE)
tidydata