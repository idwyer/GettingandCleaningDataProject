#setwd("./Coursera/Getting and Cleaning Data")
#Ensure the project working directory exists
if (!file.exists("./Project/Data")){
    dir.create("./Project/Data")
}

#Download the data files for this analysis and unzip them.
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Project/Data/projectData.zip")
dateDownloaded = date()
zipFiles <- unzip("./Project/Data/projectData.zip", list=TRUE)
unzip("./Project/Data/projectData.zip", exdir = "./Project/Data")

# Load the features data file. This contains the column headers for
# the train and test datasets.

features <- read.table("./Project/Data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

#Get the activities and set the column names
activities <- read.table("./Project/Data/UCI HAR Dataset/activity_labels.txt")
colnames(activities) <- c("activityid", "activity")

#Load Test and Train Data and combine the datasets
trainData <- read.table("./Project/Data/UCI HAR Dataset/train/X_train.txt")
testData <- read.table("./Project/Data/UCI HAR Dataset/test/X_test.txt")

allData <- rbind(trainData, testData)

allData$id <- as.integer(rownames(allData))

#Get the train and test label data. This contains the activity performed for each observation.
trainLabel <- read.table("./Project/Data/UCI HAR Dataset/train/y_train.txt")
testLabel <- read.table("./Project/Data/UCI HAR Dataset/test/y_test.txt")


#Combine the test and train labels, name the column and generate an id for each
#observation in the dataset
allLabel <- rbind(trainLabel, testLabel)
colnames(allLabel) <- "activityid"
allLabel$id <- as.integer(rownames(allLabel))


#Get the subjects
trainSubjects <- read.table("./Project/Data/UCI HAR Dataset/train/subject_train.txt")
testSubjects <- read.table("./Project/Data/UCI HAR Dataset/test/subject_test.txt")

allSubjects <- rbind(trainSubjects, testSubjects)
colnames(allSubjects) <- "subjectid"
allSubjects$id <- as.integer(rownames(allSubjects))


# Add activity descriptions to the label data by joining the datasets
allActivity <- merge(allLabel, activities, by.x = "activityid", by.y = "activityid", all.x = TRUE) 

# Use the features to populate the column headers in the data. we must manually add
# add the id column.
colnames(allData) <- (rbind(features, c(562, "id"))$V2)

# select only the std and mean columns
allData <- allData[,grepl("\\bmean()\\b", colnames(allData) ) | grepl("\\bstd()\\b", colnames(allData)) | colnames(allData) == "id"]

# remove special characters from the column names
colnames(allData) <- gsub("-", "", colnames(allData))
colnames(allData) <- gsub("\\()", "", colnames(allData))

# Make the column names lower case
colnames(allData) <- tolower(colnames(allData))

#merge the observation data with the activities and subjects
allData <- merge(allActivity, allData, by.x = "id", by.y = "id", all.y = TRUE) 
allData <- merge(allSubjects, allData, by.x = "id", by.y = "id", all.y = TRUE) 

#Load the reshape2 library so we can melt and cast the dataset.
library(reshape2)

#Melt the dataset by subject and activity. Then use dcast to calculate the average of each
#measurement by subject and activity.
allDataMelt <- melt(allData, id.vars = c("id", "subjectid", "activityid", "activity"))
allDatadcast <- dcast(allDataMelt, subjectid + activity ~ variable, mean)

#ddply
#allDataDdply <- ddply(allData2, c("subjectid", "activity"), numcolwise(mean) )

#dplyr
#allDataSum <- group_by(allData2, subjectid, activity) %>% summarise_each(funs(mean))

#Set the final column names to identify each measurement column as an average
cnam <- colnames(allDatadcast)
colnames(allDatadcast) <- ifelse(cnam %in% c("subjectid", "activity"), cnam, paste0("average", cnam)) 

#write the resulting tidy data frame out to a file.
#write.csv(allDatadcast, "./Project/Data/avgbysubjectactivity.csv", row.names = FALSE)
write.table(allDatadcast, "./Project/Data/avgbysubjectactivity.txt", row.name = FALSE)

