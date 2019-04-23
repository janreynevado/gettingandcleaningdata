## Code Book

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

### Data Source

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information

For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.  
* An identifier of the subject who carried out the experiment.

### Feature Selection

This section is copied from the ``features_info.txt`` in the zipped file containing the data set.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

*Items in bold are the only variables that are kept for this project.*

* **mean(): Mean value**
* **std(): Standard deviation**
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

### Variable Descriptions (Tidy Data)
This section contains the variables used in the tidy data and the corresponding descriptions for each of them.

| Variable | Description
-----------|-------------
| activities | The activity performed
| subject | Subject ID
| timedomainsignalbodyaccelerometermeanx | Mean time for acceleration of body for X direction
| timedomainsignalbodyaccelerometermeany | Mean time for acceleration of body for Y direction
| timedomainsignalbodyaccelerometermeanz | Mean time for acceleration of body for Z direction
| timedomainsignalbodyaccelerometerstandarddeviationx | Standard deviation of time for acceleration of body for X direction
| timedomainsignalbodyaccelerometerstandarddeviationy | Standard deviation of time for acceleration of body for Y direction
| timedomainsignalbodyaccelerometerstandarddeviationz | Standard deviation of time for acceleration of body for Z direction
| timedomainsignalgravityaccelerometermeanx | Mean time of acceleration of gravity for X direction
| timedomainsignalgravityaccelerometermeany | Mean time of acceleration of gravity for Y direction
| timedomainsignalgravityaccelerometermeanz | Mean time of acceleration of gravity for Z direction
| timedomainsignalgravityaccelerometerstandarddeviationx | Standard deviation of time of acceleration of gravity for X direction
| timedomainsignalgravityaccelerometerstandarddeviationy | Standard deviation of time of acceleration of gravity for Y direction
| timedomainsignalgravityaccelerometerstandarddeviationz | Standard deviation of time of acceleration of gravity for Z direction
| timedomainsignalbodyaccelerometerjerkmeanx | Mean time of body acceleration jerk for X direction
| timedomainsignalbodyaccelerometerjerkmeany | Mean time of body acceleration jerk for Y direction
| timedomainsignalbodyaccelerometerjerkmeanz| Mean time of body acceleration jerk for Z direction
| timedomainsignalbodyaccelerometerjerkstandarddeviationx | Standard deviation of time of body acceleration jerk for X direction
| timedomainsignalbodyaccelerometerjerkstandarddeviationy | Standard deviation of time of body acceleration jerk for Y direction
| timedomainsignalbodyaccelerometerjerkstandarddeviationz | Standard deviation of time of body acceleration jerk for Z direction
| timedomainsignalbodygyroscopemeanx | Mean body gyroscope measurement for X direction
| timedomainsignalbodygyroscopemeany | Mean body gyroscope measurement for Y direction
| timedomainsignalbodygyroscopemeanz | Mean body gyroscope measurement for Z direction
| timedomainsignalbodygyroscopestandarddeviationx | Standard deviation of body gyroscope measurement for X direction
| timedomainsignalbodygyroscopestandarddeviationy | Standard deviation of body gyroscope measurement for Y direction
| timedomainsignalbodygyroscopestandarddeviationz | Standard deviation of body gyroscope measurement for Z direction
| timedomainsignalbodygyroscopejerkmeanx | Mean jerk signal of body for X direction
| timedomainsignalbodygyroscopejerkmeany | Mean jerk signal of body for Y direction
| timedomainsignalbodygyroscopejerkmeanz | Mean jerk signal of body for Z direction
| timedomainsignalbodygyroscopejerkstandarddeviationx | Standard deviation of jerk signal of body for X direction
| timedomainsignalbodygyroscopejerkstandarddeviationy | Standard deviation of jerk signal of body for Y direction
| timedomainsignalbodygyroscopejerkstandarddeviationz | Standard deviation of jerk signal of body for Z direction
| timedomainsignalbodyaccelerometermagnitudemean | Mean magnitude of body Acc
| timedomainsignalbodyaccelerometermagnitudestandarddeviation | Standard deviation of magnitude of body acceleration
| timedomainsignalgravityaccelerometermagnitudemean | Mean gravity acceleration magnitude
| timedomainsignalbodyaccelerometermagnitudestandarddeviation | Standard deviation of gravity acceleration magnitude
| timedomainsignalbodyaccelerometerjerkmagnitudemean | Mean magnitude of body acceleration jerk
| timedomainsignalbodyaccelerometerjerkmagnitudestandarddeviation | Standard deviation of magnitude of body acceleration jerk
| timedomainsignalbodygyroscopemagnitudemean | Mean magnitude of body gyroscope measurement
| timedomainsignalbodygyroscopemagnitudestandarddeviation | Standard deviation of magnitude of body gyroscope measurement
| timedomainsignalbodygyroscopejerkmagnitudemean | Mean magnitude of body body gyroscope jerk measurement
| timedomainsignalbodygyroscopejerkmagnitudestandarddeviation | Standard deviation of magnitude of body body gyroscope jerk measurement
| frequencydomainsignalbodyaccelerometermeanx | Mean frequency of body acceleration for X direction
| frequencydomainsignalbodyaccelerometermeany | Mean frequency of body acceleration for Y direction
| frequencydomainsignalbodyaccelerometermeanz | Mean frequency of body acceleration for Z direction
| frequencydomainsignalbodyaccelerometerstandarddeviationx | Standard deviation of frequency of body acceleration for X direction
| frequencydomainsignalbodyaccelerometerstandarddeviationy | Standard deviation of frequency of body acceleration for Y direction
| frequencydomainsignalbodyaccelerometerstandarddeviationz | Standard deviation of frequency of body acceleration for Z direction
| frequencydomainsignalbodyaccelerometerjerkmeanx| Mean frequency of body acceleration jerk for X direction
| frequencydomainsignalbodyaccelerometerjerkmeany | Mean frequency of body acceleration jerk for Y direction
| frequencydomainsignalbodyaccelerometerjerkmeanz | Mean frequency of body acceleration jerk for Z direction
| frequencydomainsignalbodyaccelerometerjerkstandarddeviationx | Standard deviation frequency of body accerlation jerk for X direction
| frequencydomainsignalbodyaccelerometerjerkstandarddeviationy | Standard deviation frequency of body accerlation jerk for Y direction
| frequencydomainsignalbodyaccelerometerjerkstandarddeviationz | Standard deviation frequency of body accerlation jerk for Z direction
| frequencydomainsignalbodygyroscopemeanx | Mean frequency of body gyroscope measurement for X direction
| frequencydomainsignalbodygyroscopemeany | Mean frequency of body gyroscope measurement for Y direction
| frequencydomainsignalbodygyroscopemeanz | Mean frequency of body gyroscope measurement for Z direction
| frequencydomainsignalbodygyroscopestandarddeviationx | Standard deviation frequency of body gyroscope measurement for X direction
| frequencydomainsignalbodygyroscopestandarddeviationy | Standard deviation frequency of body gyroscope measurement for Y direction
| frequencydomainsignalbodygyroscopestandarddeviationz | Standard deviation frequency of body gyroscope measurement for Z direction
| frequencydomainsignalbodyaccelerometermagnitudemean | Mean frequency of body acceleration magnitude
| frequencydomainsignalbodyaccelerometermagnitudestandarddeviation | Standard deviation of frequency of body acceleration magnitude
| frequencydomainsignalbodyaccelerometerjerkmagnitudemean | Mean frequency of body acceleration jerk magnitude
| frequencydomainsignalbodyaccelerometerjerkmagnitudestandarddeviation | Standard deviation of frequency of body acceleration jerk magnitude
| frequencydomainsignalbodygyroscopemagnitudemean | Mean frequency of magnitude of body gyroscope measurement
| frequencydomainsignalbodygyroscopemagnitudestandarddeviation | Standard deviation of frequency of magnitude of body gyroscope measurement
| frequencydomainsignalbodygyroscopejerkmagnitudemean | Mean frequency of magnitude of body gyroscope jerk measurement
| frequencydomainsignalbodygyroscopejerkmagnitudestandarddeviation | Standard deviation frequency of magnitude of body gyroscope jerk measurement

### Steps Taken to Transform and Clean the Data

#### Preliminaries

Loading the required package

```r
library(data.table)
```

Downloading the data

```r
fileURL = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
        download.file(fileURL,'./UCI HAR Dataset.zip', mode = 'wb')
        unzip("UCI HAR Dataset.zip", exdir = getwd())
```

#### Reading and Converting the Data

Importing the data from features.txt file

```r
features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
```

Getting only the second column of the data frame and converting it to character type

```r
features <- as.character(features[,2])
```

Loading the training data

```r
train_x <- read.table('./UCI HAR Dataset/train/X_train.txt') 
train_activity <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
train_subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt', header = FALSE, sep = ' ')
```

Combining all the training data frames into one data frame and changing the names of the headers

```r
train_data <-  data.frame(train_subject, train_activity, train_x) 
names(train_data) <- c(c('subject', 'activity'), features)
```

Loading the testing data

```r
test_x <- read.table('./UCI HAR Dataset/test/X_test.txt')
test_activity <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
test_subject <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE, sep = ' ')
```

Combining all the testing data frames into one data frame and changing the names of the headers

```r
test_data <-  data.frame(test_subject, test_activity, test_x)
names(test_data) <- c(c('subject', 'activity'), features) 
```

Merging the training and testing data frames into one data frame

```r
merged_data <- rbind(train_data, test_data)
```

#### Extracting only the measurements on mean and standard deviation for each measurement

```r
meanstd_select <- grep('mean\\(\\)|std\\(\\)', features)
extracted_data <- merged_data[,c(1,2,meanstd_select + 2)]
```

#### Using descriptive activity names to name the activities in the data set

```r
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
activity_labels <- as.character(activity_labels[,2])
extracted_data$activity <- activity_labels[extracted_data$activity]
```

#### Appropriately labeling the data set with descriptive variable names

```r
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
```

#### Creating a second, independent tidy data set with the average of each variable for each activity and each subject

```r
tidy_data <- aggregate(extracted_data[,3:68], by = list(activity = extracted_data$activity, subject = extracted_data$subject),FUN = mean)
write.table(x = tidy_data, file = "tidy_data.txt", row.names = FALSE)
```
