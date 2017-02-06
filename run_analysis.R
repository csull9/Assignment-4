### Part 1. Merge training and test sets to create one data set

## Set directory to test 

setwd("test")

## Merge test data to create one set for test 

xTest <- read.table("X_test.txt")
yTest <- read.table("Y_test.txt")
subjectTest <- read.table("subject_test.txt")
Test <- cbind(subjectTest$V1, yTest$V1, xTest)

## Set directory to train 

setwd("..")
setwd("train")

## Merge train data to create one set for test 

xTrain <- read.table("X_train.txt")
yTrain <- read.table("y_train.txt")
subjectTrain <- read.table("subject_train.txt")
Train <- cbind(subjectTrain$V1, yTrain$V1, xTrain)

## Unify column names and merge train and test data sets into master
named <- c("subject", "activity")
names(Train)[1:2] <- named
names(Test)[1:2] <- named
master <- rbind(Train, Test)

### Part 2. Extracts only the measurements on the mean and standard 
### deviation for each measurement.

setwd("..")
features <- read.table("features.txt")
featuresvec <- as.character(features$V2)

## Find mean values
meanvals <- grep("[Mm]ean", featuresvec)

## Find std values 
stdvals <- grep("[Ss]td", featuresvec)

## Correct values to account for 2 new added columns previously
meanvals <- meanvals + 2 
stdvals <- stdvals + 2

## Combine  vectors and keep 1st and 2nd columns in vector
meanstd <- c(meanvals, stdvals)
meanstd <- sort(meanstd)
meanstd <- c(1,2, meanstd)

## Only keep meanstd columns in the master data set
master <- master[, meanstd]

### Part 3. Use descriptive activities names to name the activities 
### in the data set 

length = nrow(master)
for(i in 1:length){
  if(master[i,2] == 1){master[i,2] <- "WALKING"}
  if(master[i,2] == 2){master[i,2] <- "WALKING_UPSTAIRS"}
  if(master[i,2] == 3){master[i,2] <- "WALKING_DOWNSTAIRS"}
  if(master[i,2] == 4){master[i,2] <- "SITTING"}
  if(master[i,2] == 5){master[i,2] <- "STANDING"}
  if(master[i,2] == 6){master[i,2] <- "LAYING"}
}

### Part 4. Appropriately label with descriptive variable names
meanvals <- meanvals - 2
stdvals <- stdvals - 2
meanstd <- c(meanvals, stdvals)
meanstd <- sort(meanstd)
goodnames <- featuresvec[meanstd]
names(master)[3:88] <- goodnames

### Part 5. Second, independent tidy data set with average of each
### variable for each activity and each subject 

for(i in 1:30){
  ## Get walking values for participant i 
  walk <- filter(master, subject == i & activity == "WALKING")
  walk <- summarise_all(walk[3:88], .funs = c(Mean = "mean"))
  walk <- cbind(subject = i, actifvity = "WALKING", walk)
  if(i == 1){secondtable <- walk}
  else{secondtable <- rbind(secondtable, walk)}
  ## Walking up values 
  walkup <- filter(master, subject == i & activity == "WALKING_UPSTAIRS")
  walkup <- summarise_all(walkup[3:88], .funs = c(Mean = "mean"))
  walkup <- cbind(subject = i, activity = "WALKING_UPSTAIRS", walkup)
  secondtable <- rbind(secondtable, walkup)
  ## Walking downstairs values 
  walkdown <- filter(master, subject == i & activity == "WALKING_DOWNSTAIRS")
  walkdown <- summarise_all(walkdown[3:88], .funs = c(Mean = "mean"))
  walkdown <- cbind(subject = i, activity = "WALKING_DOWNSTAIRS", walkdown)
  secondtable <- rbind(secondtable, walkdown) 
  ## Sitting values 
  sitting <- filter(master, subject == i & activity == "SITTING")
  sitting <- summarise_all(sitting[3:88], .funs = c(Mean = "mean"))
  sitting <- cbind(subject = i, activity = "SITTING", sitting)
  secondtable <- rbind(secondtable, sitting) 
  ## Standing values 
  standing <- filter(master, subject == i & activity == "STANDING")
  standing <- summarise_all(standing[3:88], .funs = c(Mean = "mean"))
  standing <- cbind(subject = i, activity = "STANDING", standing)
  secondtable <- rbind(secondtable, standing)
  ## Laying values 
  laying <- filter(master, subject == i & activity == "LAYING")
  laying <- summarise_all(laying[3:88], .funs = c(Mean = "mean"))
  laying <- cbind(subject = i, activity = "LAYING", laying)
  secondtable <- rbind(secondtable, laying)
}
print(secondtable)


