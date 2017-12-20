library(dplyr)

##Read elements from X_test and X_train files
X_test <-read.csv("./UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="")
X_train <-read.csv("./UCI HAR Dataset/train/X_train.txt", header=FALSE,sep="")
features <- read.csv("./UCI HAR Dataset/features.txt",header=FALSE,sep="",col.names=c("id","label"))

##Read activity
y_test <-read.csv("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
y_train <-read.csv("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
activity_label<-read.csv("./UCI HAR Dataset/activity_labels.txt",sep=" ", header=FALSE)

##Read each row who identifiers the subjet
subject_test<- read.csv("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
subject_train<- read.csv("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)


#Merge elements from X_test and X_train files
X<-bind_rows(X_test,X_train)


#Clean X columns names
names(X)<-features$label %>%
        make.names(unique=TRUE) %>%
        gsub(pattern="\\.",replacement="") %>%
        tolower()

list<-grep(pattern="mean|std",names(X),value=TRUE)
X_mean_std<-select(X,list)


## 3. Uses descriptive activity names to name the activities in the data set
#Merge elements from y_test and y_train files
y<-bind_rows(y_test,y_train)
activity_labeled<-left_join(y,activity_label)
names(activity_labeled)<-c("id","activity")
X_mean_std<-bind_cols(activity_labeled,X_mean_std)
X_mean_std <-select(X_mean_std,-id)


##Merge element from identifiers subjects_test and subjects_train
subjects<-bind_rows(subject_test,subject_train)
names(subjects)<-"subjects"
X_mean_std<-bind_cols(subjects,X_mean_std)


##----------------------------------------------------------------
X_final<- X_mean_std %>%
        group_by(activity,subjects) %>%
        summarise_all(mean)

##Write
write.table(X_final,"./tidy_data_output.txt",row.names = FALSE)

