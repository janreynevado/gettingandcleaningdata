# Getting and Cleaning Data Course Project

## Purpose

The purpose of this project is to demonstrate one's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. One will be graded by his/her peers on a series of yes/no questions related to the project. One will be required to submit:

1. a tidy data set as described below,
2. a link to a Github repository with your script for performing the analysis,
3. a code book that describes the variables, the data, and any transformations or work that you performed, to clean up the data called ``CodeBook.md``, and
4. a ``README.md`` in the repo with your scripts.

## Data Source

Here is the site where the data is obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Precondition

Before working on with the data, it needs to be downloaded from the [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). After the file is downloaded, it needs to be unzipped and extracted to the working directory. Lines of code were already included in the ``run_analysis.R`` file in this repository to fulfill these preconditions.

## Script Functionality

The R script called ``run_analysis.R`` included in this repository does the following:

1. merges the training and the test sets to create one data set,
2. extracts only the measurements on the mean and standard deviation for each measurement,
3. uses descriptive activity names to name the activities in the data set,
4. appropriately labels the data set with descriptive variable names, and
5. from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output

The output ``tidy_data.txt`` can be viewed [here](https://github.com/janreynevado/gettingandcleaningdata/blob/master/tidy_data.txt). As defined in the script functionality, it contains the average of each variable for each activity and each subject.

## Code Book

The Code Book named ``CodeBook.md`` for this project can be viewed [here](https://github.com/janreynevado/gettingandcleaningdata/blob/master/CodeBook.md). It explains the transformations performed and the resulting data and variables in detail. **To see how the script works, please open this file.**
