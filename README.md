========================================================================
Run_analysis.R with Human Activity Recognition Using Smartphones Dataset
Version 1.0
========================================================================
Patrice ROSAMONT
========================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


Getting and Cleaning Data Course Project Instructions
=====================================================
You should create one R script called run_analysis.R that does the following.

-Merges the training and the test sets to create one data set.
-Extracts only the measurements on the mean and standard deviation for each measurement.
-Uses descriptive activity names to name the activities in the data set
-Appropriately labels the data set with descriptive variable names.
-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



Run_analysis.R data output is provided :
====================================================================
- A descriptive activity label (activity).
- An identifier of the subject who carried out the experiment (subjects).
- Columns with the average of each variable [containing "mean" or "std" into extracted columns names from X_test and X_train data] for each activity and each subject. 


Run_analysis.R analysis description
===================================

1. Read elements from train and test sets [X_test.txt, X_train.txt, features.txt], activities[y_test.txt, y_train.txt, activity_label.txt] and identifiers subjects[subject_test.txt, subject_train.txt] using read.csv function with header=FALSE

2. Merge elements from X_test and X_train sets using bind_rows to a new variable called X

3. Clean X columns names and extract a new data set X with only measurements on the mean and standard deviation for each measurement.

4. Merge elements from y_test and y_train sets using bind_rows to a new variable called y

5. Uses descriptive activity names to name the activities in the data set y.

6. Bind by columns activities data set y and X data set

7. Merge elements from identifiers subjects_test and subjects_train

8. Bind by columns identifiers data set and X data set

9. Using X data set, group by activity and subjects and calculate for each variable the average

10. Create a txt file called tidy_data_output.txt to save data set from 9. point.


The dataset includes the following files:
=========================================

- 'README.txt'

- 'Run_Analysis.R' : Script for Coursera Project Getting and Cleaning Data Course Project.

- 'tidy_data_output.txt' : Output Data set generated by Run_Analysis.R

- 'codebook.md' : Show output variables and summaries

- 'UCI HAR Dataset folder containing

>> 'features_info.txt': Shows information about the variables used on the feature vector.

>> 'features.txt': List of all features.

>> 'activity_labels.txt': Links the class labels with their activity name.

>> 'train/X_train.txt': Training set.

>> 'train/y_train.txt': Training labels.

>> 'test/X_test.txt': Test set.

>> 'test/y_test.txt': Test labels.

 


