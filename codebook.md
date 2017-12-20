
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



Run_analysis.R analysis variables
===================================

- activity variable is a factor variable representing all activities
- subjects represents a integer identifer
- all the rest of variables are double type


[1] "activity"                          "subjects"                          "tbodyaccmeanx"                    
 [4] "tbodyaccmeany"                     "tbodyaccmeanz"                     "tbodyaccstdx"                     
 [7] "tbodyaccstdy"                      "tbodyaccstdz"                      "tgravityaccmeanx"                 
[10] "tgravityaccmeany"                  "tgravityaccmeanz"                  "tgravityaccstdx"                  
[13] "tgravityaccstdy"                   "tgravityaccstdz"                   "tbodyaccjerkmeanx"                
[16] "tbodyaccjerkmeany"                 "tbodyaccjerkmeanz"                 "tbodyaccjerkstdx"                 
[19] "tbodyaccjerkstdy"                  "tbodyaccjerkstdz"                  "tbodygyromeanx"                   
[22] "tbodygyromeany"                    "tbodygyromeanz"                    "tbodygyrostdx"                    
[25] "tbodygyrostdy"                     "tbodygyrostdz"                     "tbodygyrojerkmeanx"               
[28] "tbodygyrojerkmeany"                "tbodygyrojerkmeanz"                "tbodygyrojerkstdx"                
[31] "tbodygyrojerkstdy"                 "tbodygyrojerkstdz"                 "tbodyaccmagmean"                  
[34] "tbodyaccmagstd"                    "tgravityaccmagmean"                "tgravityaccmagstd"                
[37] "tbodyaccjerkmagmean"               "tbodyaccjerkmagstd"                "tbodygyromagmean"                 
[40] "tbodygyromagstd"                   "tbodygyrojerkmagmean"              "tbodygyrojerkmagstd"              
[43] "fbodyaccmeanx"                     "fbodyaccmeany"                     "fbodyaccmeanz"                    
[46] "fbodyaccstdx"                      "fbodyaccstdy"                      "fbodyaccstdz"                     
[49] "fbodyaccmeanfreqx"                 "fbodyaccmeanfreqy"                 "fbodyaccmeanfreqz"                
[52] "fbodyaccjerkmeanx"                 "fbodyaccjerkmeany"                 "fbodyaccjerkmeanz"                
[55] "fbodyaccjerkstdx"                  "fbodyaccjerkstdy"                  "fbodyaccjerkstdz"                 
[58] "fbodyaccjerkmeanfreqx"             "fbodyaccjerkmeanfreqy"             "fbodyaccjerkmeanfreqz"            
[61] "fbodygyromeanx"                    "fbodygyromeany"                    "fbodygyromeanz"                   
[64] "fbodygyrostdx"                     "fbodygyrostdy"                     "fbodygyrostdz"                    
[67] "fbodygyromeanfreqx"                "fbodygyromeanfreqy"                "fbodygyromeanfreqz"               
[70] "fbodyaccmagmean"                   "fbodyaccmagstd"                    "fbodyaccmagmeanfreq"              
[73] "fbodybodyaccjerkmagmean"           "fbodybodyaccjerkmagstd"            "fbodybodyaccjerkmagmeanfreq"      
[76] "fbodybodygyromagmean"              "fbodybodygyromagstd"               "fbodybodygyromagmeanfreq"         
[79] "fbodybodygyrojerkmagmean"          "fbodybodygyrojerkmagstd"           "fbodybodygyrojerkmagmeanfreq"     
[82] "angletbodyaccmeangravity"          "angletbodyaccjerkmeangravitymean"  "angletbodygyromeangravitymean"    
[85] "angletbodygyrojerkmeangravitymean" "anglexgravitymean"                 "angleygravitymean"                
[88] "anglezgravitymean"

