---
title: 'Peer-graded Assignment: Getting and Cleaning Data Course Project'
author: "Janrey Nevado"
date: "April 23, 2019"
output: html_document
---

## Getting and Cleaning Data Course Project

### Purpose

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:

1. A tidy data set as described below,
2. A link to a Github repository with your script for performing the analysis,
3. A code book that describes the variables, the data, and any transformations or work that you performed, to clean up the data called ``CodeBook.md``, and
4. A ``README.md`` in the repo with your scripts.

### Data Source

Here is the site where the data is obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Precondition

Before working on with the data, it needs to be downloaded from the [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). After the file has been downloaded, it needs to be unzipped and get extracted to the working directory. Lines of code were already included in the ``run_analysis.R`` file in this repository to fulfill these preconditions.

### Script Functionality

The R script called ``run_analysis.R`` included in this repository does the following:

1. merges the training and the test sets to create one data set,
2. extracts only the measurements on the mean and standard deviation for each measurement,
3. uses descriptive activity names to name the activities in the data set,
4. appropriately labels the data set with descriptive variable names, and
5. from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Code Book

The Code Book named ``CodeBook.md`` for this project can be found [here](https://github.com/janreynevado/gettingandcleaningdata/CodeBook.md). It explains the transformations performed and the resulting data and variables in detail.
