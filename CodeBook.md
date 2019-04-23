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
| timedomainsignalbodyaccelerometermeanx | Mean of the time domain body acceleration in X direction
| timedomainsignalbodyaccelerometermeany | Mean of the time domain body acceleration in Y direction
| timedomainsignalbodyaccelerometermeanz | Mean of the time domain body acceleration in Z direction
| timedomainsignalbodyaccelerometerstandarddeviationx | Standard deviation of time domain body acceleration in X direction
| timedomainsignalbodyaccelerometerstandarddeviationy | Standard deviation of time domain body acceleration in Y direction
| timedomainsignalbodyaccelerometerstandarddeviationz | Standard deviation of time domain body acceleration in Z direction
| timedomainsignalgravityaccelerometermeanx | Mean of the time domain gravity acceleration in X direction
| timedomainsignalgravityaccelerometermeany | Mean of the time domain gravity acceleration in Y direction
| timedomainsignalgravityaccelerometermeanz | Mean of the time domain gravity acceleration in Z direction
| timedomainsignalgravityaccelerometerstandarddeviationx | Standard deviation of the time domain gravity acceleration in X direction
| timedomainsignalgravityaccelerometerstandarddeviationy | Standard deviation of the time domain gravity acceleration in Y direction
| timedomainsignalgravityaccelerometerstandarddeviationz | Standard deviation of the time domain gravity acceleration in Z direction
| timedomainsignalbodyaccelerometerjerkmeanx | Mean of the time domain body acceleration jerk (rate of change of acceleration) in X direction
| timedomainsignalbodyaccelerometerjerkmeany | Mean of the time domain body acceleration jerk (rate of change of acceleration) in Y direction
| timedomainsignalbodyaccelerometerjerkmeanz | Mean of the time domain body acceleration jerk (rate of change of acceleration) in Z direction
| timedomainsignalbodyaccelerometerjerkstandarddeviationx | Standard deviation of the time domain body acceleration jerk (rate of change of acceleration) in X direction
| timedomainsignalbodyaccelerometerjerkstandarddeviationy | Standard deviation of the time domain body acceleration jerk (rate of change of acceleration) in Y direction
| timedomainsignalbodyaccelerometerjerkstandarddeviationz | Standard deviation of the time domain body acceleration jerk (rate of change of acceleration) in Z direction
| timedomainsignalbodygyroscopemeanx | Mean of the time domain body angular velocity in X direction
| timedomainsignalbodygyroscopemeany | Mean of the time domain body angular velocity in Y direction
| timedomainsignalbodygyroscopemeanz | Mean of the time domain body angular velocity in Z direction
| timedomainsignalbodygyroscopestandarddeviationx | Standard deviation of the time domain body angular velocity in X direction
| timedomainsignalbodygyroscopestandarddeviationy | Standard deviation of the time domain body angular velocity in Y direction
| timedomainsignalbodygyroscopestandarddeviationz | Standard deviation of the time domain body angular velocity in Z direction
| timedomainsignalbodygyroscopejerkmeanx | Mean of the time domain body angular velocity jerk in X direction
| timedomainsignalbodygyroscopejerkmeany | Mean of the time domain body angular velocity jerk in Y direction
| timedomainsignalbodygyroscopejerkmeanz | Mean of the time domain body angular velocity jerk in Z direction
| timedomainsignalbodygyroscopejerkstandarddeviationx | Standard deviation of the time domain body angular velocity jerk in X direction
| timedomainsignalbodygyroscopejerkstandarddeviationy | Standard deviation of the time domain body angular velocity jerk in Y direction
| timedomainsignalbodygyroscopejerkstandarddeviationz | Standard deviation of the time domain body angular velocity jerk in Z direction
| timedomainsignalbodyaccelerometermagnitudemean | Mean of the time components of time domain magnitude of body acceleration
| timedomainsignalbodyaccelerometermagnitudestandarddeviation | Standard deviation of the time components of time domain magnitude of body acceleration
| timedomainsignalgravityaccelerometermagnitudemean | Mean of the time components of time domain magnitude of gravity acceleration
| timedomainsignalgravityaccelerometermagnitudestandarddeviation | Standard deviation of the time components of time domain magnitude of gravity acceleration
| timedomainsignalbodyaccelerometerjerkmagnitudemean | Mean of the time components of the time domain magnitude of body acceleration jerk
| timedomainsignalbodyaccelerometerjerkmagnitudestandarddeviation | Standard deviation of the time components of the time domain magnitude of body acceleration jerk
| timedomainsignalbodygyroscopemagnitudemean | Mean of the time components of the time domain magnitude of body angular velocity
| timedomainsignalbodygyroscopemagnitudestandarddeviation | Standard deviation of the time components of the time domain magnitude of body angular velocity
| timedomainsignalbodygyroscopejerkmagnitudemean | Mean of the time components of the time domain magnitude of body angular velocity jerk
| timedomainsignalbodygyroscopejerkmagnitudestandarddeviation | Standard deviation of the time components of the time domain magnitude of body angular velocity jerk
| frequencydomainsignalbodyaccelerometermeanx | Mean of the frequency domain body acceleration in X direction
| frequencydomainsignalbodyaccelerometermeany | Mean of the frequency domain body acceleration in Y direction
| frequencydomainsignalbodyaccelerometermeanz | Mean of the frequency domain body acceleration in Z direction
| frequencydomainsignalbodyaccelerometerstandarddeviationx | Standard deviation of the frequency domain body acceleration in X direction
| frequencydomainsignalbodyaccelerometerstandarddeviationy | Standard deviation of the frequency domain body acceleration in Y direction
| frequencydomainsignalbodyaccelerometerstandarddeviationz | Standard deviation of the frequency domain body acceleration in Z direction
| frequencydomainsignalbodyaccelerometerjerkmeanx | Mean of the frequency domain body acceleration jerk (rate of change of acceleration) in X direction
| frequencydomainsignalbodyaccelerometerjerkmeany | Mean of the frequency domain body acceleration jerk (rate of change of acceleration) in Y direction
| frequencydomainsignalbodyaccelerometerjerkmeanz | Mean of the frequency domain body acceleration jerk (rate of change of acceleration) in Z direction
| frequencydomainsignalbodyaccelerometerjerkstandarddeviationx | Standard deviation of the frequency domain body acceleration jerk (rate of change of acceleration) in X direction
| frequencydomainsignalbodyaccelerometerjerkstandarddeviationy | Standard deviation of the frequency domain body acceleration jerk (rate of change of acceleration) in Y direction
| frequencydomainsignalbodyaccelerometerjerkstandarddeviationz | Standard deviation of the frequency domain body acceleration jerk (rate of change of acceleration) in Z direction
| frequencydomainsignalbodygyroscopemeanx | Mean of the frequency domain body angular velocity in X direction
| frequencydomainsignalbodygyroscopemeany | Mean of the frequency domain body angular velocity in Y direction
| frequencydomainsignalbodygyroscopemeanz | Mean of the frequency domain body angular velocity in Z direction
| frequencydomainsignalbodygyroscopestandarddeviationx | Standard deviation of the frequency domain body angular velocity in X direction
| frequencydomainsignalbodygyroscopestandarddeviationy | Standard deviation of the frequency domain body angular velocity in Y direction
| frequencydomainsignalbodygyroscopestandarddeviationz | Standard deviation of the frequency domain body angular velocity in Z direction
| frequencydomainsignalbodyaccelerometermagnitudemean | Mean of the frequency components of frequency domain magnitude of body acceleration
| frequencydomainsignalbodyaccelerometermagnitudestandarddeviation | Standard deviation of the frequency components of frequency domain magnitude of body acceleration
| frequencydomainsignalbodyaccelerometerjerkmagnitudemean | Mean of the frequency components of frequency domain magnitude of body acceleration jerk
| frequencydomainsignalbodyaccelerometerjerkmagnitudestandarddeviation | Standard deviation of the frequency components of frequency domain magnitude of body acceleration jerk
| frequencydomainsignalbodygyroscopemagnitudemean | Mean of the frequency components of frequency domain magnitude of body angular velocity
| frequencydomainsignalbodygyroscopemagnitudestandarddeviation | Standard deviation of the frequency components of frequency domain magnitude of body angular velocity
| frequencydomainsignalbodygyroscopejerkmagnitudemean | Mean of the frequency components of frequency domain magnitude of body angular velocity jerk
| frequencydomainsignalbodygyroscopejerkmagnitudestandarddeviation | Standard deviation of the frequency components of frequency domain magnitude of body angular velocity jerk

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

*Note: The parentheses should be included in the grep function because mean frequency (which is not needed in this project) will be included otherwise. There should only be 66 features left (33 each from mean and standard deviation).*

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
