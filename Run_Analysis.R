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
# Load data values for 'Test' dataset and extract desired columns
TestSet <- read.table("./test/X_test.txt")
SlimTestSet <- TestSet[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 
                             214:215, 227:228, 240:241, 253:254, 266:217, 
                             345:350, 424:429, 503:504, 516:517, 529:530, 
                             542:543)]
# Combine activity labels and subject id colums with data subset 
tLabels <- read.table("./test/Y_Test.txt")
tSubs <- read.table("./test/subject_test.txt")
CompTset <- cbind(tSubs, tLabels, SlimTestSet)
# Repeat process for 'Train' dataset
TrainSet <- read.table("./train/X_train.txt")
SlimTrainSet <- TrainSet[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 
                           214:215, 227:228, 240:241, 253:254, 266:217, 
                           345:350, 424:429, 503:504, 516:517, 529:530, 
                           542:543)]
yLabels <- read.table("./train/y_train.txt")
ySubs <- read.table("./train/subject_train.txt")
CompYset <- cbind(ySubs, yLabels, SlimTrainSet)
#Merge two datasets 
CompSet <- rbind(CompTset, CompYset)
# Rename columns and replace activity numbers with descriptive names
b <- read.table("./features.txt")
b1 <- as.vector(b[c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 
                    214:215, 227:228, 240:241, 253:254, 266:217, 
                    345:350, 424:429, 503:504, 516:517, 529:530, 
                    542:543), 2])
colnames(CompSet) <- c("Subject_id", "Activity", b1)
CompSet[(CompSet$Activity == "1"), ] <- CompSet[(CompSet$Activity =="Walking"), ]
CompSet$Activity[CompSet$Activity == "1"] <- CompSet$Activity[CompSet$Activity == "Walking"] 
CompSet$Activity[CompSet$Activity == "2"] <- CompSet$Activity[CompSet$Activity=="Walk_Upstairs"]               
CompSet$Activity[CompSet$Activity == "3"] <- CompSet$Activity[CompSet$Activity == "Walk_Downstairs"]
CompSet$Activity[CompSet$Activity == "4"] <- CompSet$Activity[CompSet$Activity == "Sitting"]
CompSet$Activity[CompSet$Activity == "5"] <- CompSet$Activity[CompSet$Activity == "Standing"]
CompSet$Activity[CompSet$Activity == "6"] <- CompSet$Activity[CompSet$Activity == "Laying"]
