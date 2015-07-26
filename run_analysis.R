setwd("./Workspace/xwu")

# download data and unzip into folder
if(!file.exists("./project3")){dir.create("./project3")}
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./project3/getdata-projectfiles-UCI HAR Dataset.zip", method = "curl")
library(utils)
unzip ("./project3/getdata-projectfiles-UCI HAR Dataset.zip", exdir = "./project3")
setwd("./project3/UCI HAR Dataset")

# clean test data
subject_test = read.table("./test/subject_test.txt")
X_test = read.table("./test/X_test.txt")
y_test = read.table("./test/y_test.txt")
test = cbind(subject_test, X_test, y_test)
colnames(test)[1] = "subject"
colnames(test)[ncol(test)] = "y"

# clean training data
subject_train = read.table("./train/subject_train.txt")
X_train = read.table("./train/X_train.txt")
y_train = read.table("./train/y_train.txt")
train = cbind(subject_train, X_train, y_train)
colnames(train)[1] = "subject"
colnames(train)[ncol(train)] = "y"

# merge training and test sets
test = cbind(test, "test")
colnames(test)[ncol(test)] = "dataset"
train = cbind(train, "train")
colnames(train)[ncol(train)] = "dataset"
table = rbind(train, test)

#extract mean and standard deviation for each measurement
library(dplyr)
mean = c()
for (i in 1:nrow(table)){mean[i] = mean(as.numeric(select(table[i,], V1:V561)))}
std = c()
for (i in 1:nrow(table)){std[i] = sd(as.numeric(select(table[i,], V1:V561)))}

#descriptive activity name
table_new = data.frame(table$subject, table$y, table$dataset, mean, std)
activities = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
for (i in 1:6){table_new[,2][table_new[,2] == i] = activities[i]}

#descriptive variable name
colnames(table_new) = c("subject", "activity", "dataset", "mean", "std")

#tidy data set with the average of each variable for each activity and each subject
library(plyr)
table_group = ddply(table_new, .(subject, activity), summarize,
      mean = mean(mean))

#order by the original categories order
for (i in 1:6){table_group[,2][table_group[,2] == activities[i]] = i}
tidydata = arrange(table_group, subject, activity)
for (i in 1:6){tidydata[,2][tidydata[,2] == i] = activities[i]}
print(tidydata)

write.table(tidydata, file = "../run_analysis.txt", row.names=FALSE)