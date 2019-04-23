#Loading the required packages
library(data.table)

#Downloading the data
fileURL = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

#If file does not exist yet, proceed to download; otherwise, do nothing.
if (!file.exists('./UCI HAR Dataset.zip')){
        download.file(fileURL,'./UCI HAR Dataset.zip', mode = 'wb')
        unzip("UCI HAR Dataset.zip", exdir = getwd())
}

#Merging the training and the test sets to create one data set

##Importing the data from features.txt file
features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')

##Getting only the second column and converting it to character type
features <- as.character(features[,2])

##Loading the training data
train_x <- read.table('./UCI HAR Dataset/train/X_train.txt') 
train_activity <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
train_subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt', header = FALSE, sep = ' ')

##Combining all the training data frames into one data frame and changing the names of the headers
train_data <-  data.frame(train_subject, train_activity, train_x) 
names(train_data) <- c(c('subject', 'activity'), features)

##Loading the testing data
test_x <- read.table('./UCI HAR Dataset/test/X_test.txt')
test_activity <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
test_subject <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE, sep = ' ')

##Combining all the testing data frames into one data frame
test_data <-  data.frame(test_subject, test_activity, test_x)

##Changing the names of the headers
names(test_data) <- c(c('subject', 'activity'), features) 

#Merging the training and testing data frames into one data frame
merged_data <- rbind(train_data, test_data)

#Extracting only the measurements on mean and standard deviation for each measurement
meanstd_select <- grep('mean\\(\\)|std\\(\\)', features)
extracted_data <- merged_data[,c(1,2,meanstd_select + 2)]

#Using descriptive activity names to name the activities in the data set
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
activity_labels <- as.character(activity_labels[,2])
extracted_data$activity <- activity_labels[extracted_data$activity]

#Appropriately labeling the data set with descriptive variable names
names(extracted_data)[2] = "activity"
names(extracted_data) <- gsub("Acc", "Accelerometer", names(extracted_data))
names(extracted_data) <- gsub("Gyro", "Gyroscope", names(extracted_data))
names(extracted_data) <- gsub("BodyBody", "Body", names(extracted_data))
names(extracted_data) <- gsub("Mag", "Magnitude", names(extracted_data))
names(extracted_data) <- gsub("^t", "TimeDomainSignal", names(extracted_data))
names(extracted_data) <- gsub("^f", "FrequencyDomainSignal", names(extracted_data))
names(extracted_data) <- gsub("-mean()", "Mean", names(extracted_data), ignore.case = TRUE)
names(extracted_data) <- gsub("-std()", "StandardDeviation", names(extracted_data), ignore.case = TRUE)
names(extracted_data) <- gsub("-freq()", "Frequency", names(extracted_data), ignore.case = TRUE)
names(extracted_data) <- gsub("angle", "Angle", names(extracted_data))
names(extracted_data) <- gsub("gravity", "Gravity", names(extracted_data))
names(extracted_data) <- gsub("\\(|\\)|-", "", names(extracted_data))
names(extracted_data) <- tolower(names(extracted_data))

#Creating a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- aggregate(extracted_data[,3:68], by = list(activity = extracted_data$activity, subject = extracted_data$subject),FUN = mean)
write.table(x = tidy_data, file = "tidy_data.txt", row.names = FALSE)
