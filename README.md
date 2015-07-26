The script has combined training and test data sets with 10299 observations. Variables include 30 volunteers, the six activities they performed, and a 561-feature vector with time and frequency domain variables. The goal of the analysis script is to find out the mean value of each observation, and group them by volunteers and their activities. The final tidy data data frame has cleaned and grouped the original data frame into 180 observations.

###CODEBOOK

###test (data frame)

  subject_test  -  all observations from subject_test.txt, volunteers’ id

  X_test  -  all observations from X_test.txt, test set

  y_test  -  all observations from y_test.txt, test labels

###train (data frame)

  subject_train  -  all observations from subject_train.txt, volunteers’ id

  X_train  -  all observations from X_train.txt, training set

  y_train  -  all observations from y_train.txt, training labels

###table (data frame) - joint data frame of test and train

  table_new (data frame)

  subject - volunteers’ id, ranges from 1 to 30

  activities - activities performed, including

  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
  7. 
  
  dataset - name of the original dataset, test or train

  mean - mean value of the 561-vector with time and frequency domain variables

  std - standard deviation value of the 561-vector with time and frequency domain variables

###tidydata (data frame)

  subject - volunteers’ id, ranges from 1 to 30

  activities - activities performed, including

  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING

  mean - average of each variable for each activity and each subject.
