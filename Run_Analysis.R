# Create new directory and download data
if (!file.exists("PhoneData")) {
  dir.create("PhoneData")
}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./PhoneData/Raw.zip", method="curl")
Datedownloaded <- date()
#"Mon Aug 18 12:35:06 2014"

# Unzip files and navigate to directory with files
unzip("./PhoneData/Raw.zip")
setwd("~/Rfiles/CleaningData/UCI HAR Dataset")

# Load data values for 'Test' dataset and extract only columns with 
# mean and standard deviation values
TestSet <- read.table("./test/X_test.txt")
a <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 
       214:215, 227:228, 240:241, 253:254, 266:271, 
       345:350, 424:429, 503:504, 516:517, 529:530, 
       542:543)
SlimTestSet <- TestSet[, a]

# Combine activity labels (tLabels) and subject id numbers (tSubs) with 
#'Test' dataset 
tLabels <- read.table("./test/Y_Test.txt")
tSubs <- read.table("./test/subject_test.txt")
CompTset <- cbind(tSubs, tLabels, SlimTestSet)

# Repeat process for 'Train' dataset
TrainSet <- read.table("./train/X_train.txt")
SlimTrainSet <- TrainSet[, a]
yLabels <- read.table("./train/y_train.txt")
ySubs <- read.table("./train/subject_train.txt")
CompYset <- cbind(ySubs, yLabels, SlimTrainSet)

#Merge the two datasets 
CompSet <- rbind(CompTset, CompYset)

# Rename columns  
b <- read.table("./features.txt")
b1 <- as.vector(b[a, 2])
colnames(CompSet) <- c("Subject_id", "Activity", b1)

# Replace activity numbers with descriptive names
CompSet$Activity <- as.character(CompSet$Activity)  
CompSet$Activity[CompSet$Activity == "1"] <- "Walking"
CompSet$Activity[CompSet$Activity=="2"] <- "Walk_Upstairs"               
CompSet$Activity[CompSet$Activity == "3"] <- "Walk_Downstairs"
CompSet$Activity[CompSet$Activity == "4"] <- "Sitting"
CompSet$Activity[CompSet$Activity == "5"] <- "Standing"
CompSet$Activity[CompSet$Activity == "6"] <- "Laying"
CompSet <- arrange(CompSet, Subject_id, Activity)

# Create tidy new dataset with the average of each variable for each activity
# and each subject 
attach(CompSet)
aggdata <-aggregate(CompSet[3:68], by=list(Subject_id, Activity), 
                    FUN=mean, na.rm=TRUE)
detach(CompSet)

#Rename first two columns 
names(aggdata)[names(aggdata)=="Group.1"] <- "Subject_id"
names(aggdata)[names(aggdata)=="Group.2"] <- "Activity"

# Write final text file
write.table(aggdata, 
            file="~/Rfiles/CleaningData/AverageMeasurementValuesbySubjectandActivity.txt", 
            row.name=FALSE)
