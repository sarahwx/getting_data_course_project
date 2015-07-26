{\rtf1\ansi\ansicpg1252\cocoartf1347\cocoasubrtf570
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 The script has combined training and test data sets with 10299 observations. Variables include 30 volunteers, the six activities they performed, and a 561-feature vector with time and frequency domain variables. The goal of the analysis script is to find out the mean value of each observation, and group them by volunteers and their activities. The final tidy data data frame has cleaned and grouped the original data frame into 180 observations.\
\
CODEBOOK\
test (data frame)\
	subject_test  -  all observations from subject_test.txt, volunteers\'92 id\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural
\cf0 	X_test  -  all observations from X_test.txt, test set\
	y_test  -  all observations from y_test.txt, test labels\
\
train (data frame)\
	subject_train  -  all observations from subject_train.txt, volunteers\'92 id\
	X_train  -  all observations from X_train.txt, training set\
	y_train  -  all observations from y_train.txt, training labels\
\
table (data frame) - joint data frame of test and train\
\
table_new (data frame)\
	subject - volunteers\'92 id, ranges from 1 to 30\
	activities - activities performed, including\
		1. WALKING\
		2. WALKING_UPSTAIRS\
		3. WALKING_DOWNSTAIRS\
		4. SITTING\
		5. STANDING\
		6. LAYING\
	dataset - name of the original dataset, test or train\
	mean - mean value of the 561-vector with time and frequency domain variables\
	std - standard deviation value of the 561-vector with time and frequency domain variables\
\
tidydata (data frame)\
	subject - volunteers\'92 id, ranges from 1 to 30\
	activities - activities performed, including\
		1. WALKING\
		2. WALKING_UPSTAIRS\
		3. WALKING_DOWNSTAIRS\
		4. SITTING\
		5. STANDING\
		6. LAYING\
	mean - \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 average of each variable for each activity and each subject.\cf0 \cb1 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
}