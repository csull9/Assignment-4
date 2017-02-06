# Variables_Info

From “Feature Selection” in the Samsung Data: 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

# List of Variables

The tidy data set takes the average of each of these variables. So it will take the mean of the mean and of the std.  

Below are the variable names for the data set. Units of the means are described above. 

[1] "subject"                                  
 [2] "activity"                                 
 [3] "tBodyAcc-mean()-X_Mean"                   
 [4] "tBodyAcc-mean()-Y_Mean"                   
 [5] "tBodyAcc-mean()-Z_Mean"                   
 [6] "tBodyAcc-std()-X_Mean"                    
 [7] "tBodyAcc-std()-Y_Mean"                    
 [8] "tBodyAcc-std()-Z_Mean"                    
 [9] "tGravityAcc-mean()-X_Mean"                
[10] "tGravityAcc-mean()-Y_Mean"                
[11] "tGravityAcc-mean()-Z_Mean"                
[12] "tGravityAcc-std()-X_Mean"                 
[13] "tGravityAcc-std()-Y_Mean"                 
[14] "tGravityAcc-std()-Z_Mean"                 
[15] "tBodyAccJerk-mean()-X_Mean"               
[16] "tBodyAccJerk-mean()-Y_Mean"               
[17] "tBodyAccJerk-mean()-Z_Mean"               
[18] "tBodyAccJerk-std()-X_Mean"                
[19] "tBodyAccJerk-std()-Y_Mean"                
[20] "tBodyAccJerk-std()-Z_Mean"                
[21] "tBodyGyro-mean()-X_Mean"                  
[22] "tBodyGyro-mean()-Y_Mean"                  
[23] "tBodyGyro-mean()-Z_Mean"                  
[24] "tBodyGyro-std()-X_Mean"                   
[25] "tBodyGyro-std()-Y_Mean"                   
[26] "tBodyGyro-std()-Z_Mean"                   
[27] "tBodyGyroJerk-mean()-X_Mean"              
[28] "tBodyGyroJerk-mean()-Y_Mean"              
[29] "tBodyGyroJerk-mean()-Z_Mean"              
[30] "tBodyGyroJerk-std()-X_Mean"               
[31] "tBodyGyroJerk-std()-Y_Mean"               
[32] "tBodyGyroJerk-std()-Z_Mean"               
[33] "tBodyAccMag-mean()_Mean"                  
[34] "tBodyAccMag-std()_Mean"                   
[35] "tGravityAccMag-mean()_Mean"               
[36] "tGravityAccMag-std()_Mean"                
[37] "tBodyAccJerkMag-mean()_Mean"              
[38] "tBodyAccJerkMag-std()_Mean"               
[39] "tBodyGyroMag-mean()_Mean"                 
[40] "tBodyGyroMag-std()_Mean"                  
[41] "tBodyGyroJerkMag-mean()_Mean"             
[42] "tBodyGyroJerkMag-std()_Mean"              
[43] "fBodyAcc-mean()-X_Mean"                   
[44] "fBodyAcc-mean()-Y_Mean"                   
[45] "fBodyAcc-mean()-Z_Mean"                   
[46] "fBodyAcc-std()-X_Mean"                    
[47] "fBodyAcc-std()-Y_Mean"                    
[48] "fBodyAcc-std()-Z_Mean"                    
[49] "fBodyAcc-meanFreq()-X_Mean"               
[50] "fBodyAcc-meanFreq()-Y_Mean"               
[51] "fBodyAcc-meanFreq()-Z_Mean"               
[52] "fBodyAccJerk-mean()-X_Mean"               
[53] "fBodyAccJerk-mean()-Y_Mean"               
[54] "fBodyAccJerk-mean()-Z_Mean"               
[55] "fBodyAccJerk-std()-X_Mean"                
[56] "fBodyAccJerk-std()-Y_Mean"                
[57] "fBodyAccJerk-std()-Z_Mean"                
[58] "fBodyAccJerk-meanFreq()-X_Mean"           
[59] "fBodyAccJerk-meanFreq()-Y_Mean"           
[60] "fBodyAccJerk-meanFreq()-Z_Mean"           
[61] "fBodyGyro-mean()-X_Mean"                  
[62] "fBodyGyro-mean()-Y_Mean"                  
[63] "fBodyGyro-mean()-Z_Mean"                  
[64] "fBodyGyro-std()-X_Mean"                   
[65] "fBodyGyro-std()-Y_Mean"                   
[66] "fBodyGyro-std()-Z_Mean"                   
[67] "fBodyGyro-meanFreq()-X_Mean"              
[68] "fBodyGyro-meanFreq()-Y_Mean"              
[69] "fBodyGyro-meanFreq()-Z_Mean"              
[70] "fBodyAccMag-mean()_Mean"                  
[71] "fBodyAccMag-std()_Mean"                   
[72] "fBodyAccMag-meanFreq()_Mean"              
[73] "fBodyBodyAccJerkMag-mean()_Mean"          
[74] "fBodyBodyAccJerkMag-std()_Mean"           
[75] "fBodyBodyAccJerkMag-meanFreq()_Mean"      
[76] "fBodyBodyGyroMag-mean()_Mean"             
[77] "fBodyBodyGyroMag-std()_Mean"              
[78] "fBodyBodyGyroMag-meanFreq()_Mean"         
[79] "fBodyBodyGyroJerkMag-mean()_Mean"         
[80] "fBodyBodyGyroJerkMag-std()_Mean"          
[81] "fBodyBodyGyroJerkMag-meanFreq()_Mean"     
[82] "angle(tBodyAccMean,gravity)_Mean"         
[83] "angle(tBodyAccJerkMean),gravityMean)_Mean"
[84] "angle(tBodyGyroMean,gravityMean)_Mean"    
[85] "angle(tBodyGyroJerkMean,gravityMean)_Mean"
[86] "angle(X,gravityMean)_Mean"                
[87] "angle(Y,gravityMean)_Mean"                
[88] "angle(Z,gravityMean)_Mean"