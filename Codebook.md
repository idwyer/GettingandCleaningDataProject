#Getting and Cleaning Data - Project Codebook

##Study Design

Website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 

The data for this study was collected from the link below. It was downloaded and unzipped.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Summary choices
All data was summarized by subject and activity.

## Variables
* subjectid - This is the subject number (1-30) for the study.
* activity - The activity description. This can be one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 
* averagetbodyaccmeanx            - This is the average of the measurement tbodyaccmeanx from the orginal dataset by subject and activity.           
* averagetbodyaccmeany            - This is the average of the measurement tbodyaccmeany from the orginal dataset by subject and activity.           
* averagetbodyaccmeanz            - This is the average of the measurement tbodyaccmeanz from the orginal dataset by subject and activity.            
* averagetbodyaccstdx             - This is the average of the measurement tbodyaccstdx from the orginal dataset by subject and activity.               
* averagetbodyaccstdy             - This is the average of the measurement tbodyaccstdy from the orginal dataset by subject and activity.               
* averagetbodyaccstdz             - This is the average of the measurement tbodyaccstdz from the orginal dataset by subject and activity.               
* averagetgravityaccmeanx         - This is the average of the measurement tgravityaccmeanx from the orginal dataset by subject and activity.           
* averagetgravityaccmeany         - This is the average of the measurement tgravityaccmeany from the orginal dataset by subject and activity.           
* averagetgravityaccmeanz         - This is the average of the measurement tgravityaccmeanz from the orginal dataset by subject and activity.           
* averagetgravityaccstdx          - This is the average of the measurement tgravityaccstdx from the orginal dataset by subject and activity.          
* averagetgravityaccstdy          - This is the average of the measurement tgravityaccstdy from the orginal dataset by subject and activity.          
* averagetgravityaccstdz          - This is the average of the measurement tgravityaccstdz from the orginal dataset by subject and activity.          
* averagetbodyaccjerkmeanx        - This is the average of the measurement tbodyaccjerkmeanx from the orginal dataset by subject and activity.        
* averagetbodyaccjerkmeany        - This is the average of the measurement tbodyaccjerkmeany from the orginal dataset by subject and activity.        
* averagetbodyaccjerkmeanz        - This is the average of the measurement tbodyaccjerkmeanz from the orginal dataset by subject and activity.        
* averagetbodyaccjerkstdx         - This is the average of the measurement tbodyaccjerkstdx from the orginal dataset by subject and activity.         
* averagetbodyaccjerkstdy         - This is the average of the measurement tbodyaccjerkstdy from the orginal dataset by subject and activity.         
* averagetbodyaccjerkstdz         - This is the average of the measurement tbodyaccjerkstdz from the orginal dataset by subject and activity.         
* averagetbodygyromeanx           - This is the average of the measurement tbodygyromeanx from the orginal dataset by subject and activity.           
* averagetbodygyromeany           - This is the average of the measurement tbodygyromeany from the orginal dataset by subject and activity.           
* averagetbodygyromeanz           - This is the average of the measurement tbodygyromeanz from the orginal dataset by subject and activity.           
* averagetbodygyrostdx            - This is the average of the measurement tbodygyrostdx from the orginal dataset by subject and activity.           
* averagetbodygyrostdy            - This is the average of the measurement tbodygyrostdy from the orginal dataset by subject and activity.            
* averagetbodygyrostdz            - This is the average of the measurement tbodygyrostdz from the orginal dataset by subject and activity.            
* averagetbodygyrojerkmeanx       - This is the average of the measurement tbodygyrojerkmeanx from the orginal dataset by subject and activity.       
* averagetbodygyrojerkmeany       - This is the average of the measurement tbodygyrojerkmeany from the orginal dataset by subject and activity.       
* averagetbodygyrojerkmeanz       - This is the average of the measurement tbodygyrojerkmeanz from the orginal dataset by subject and activity.       
* averagetbodygyrojerkstdx        - This is the average of the measurement tbodygyrojerkstdx from the orginal dataset by subject and activity.        
* averagetbodygyrojerkstdy        - This is the average of the measurement tbodygyrojerkstdy from the orginal dataset by subject and activity.        
* averagetbodygyrojerkstdz        - This is the average of the measurement tbodygyrojerkstdz from the orginal dataset by subject and activity.        
* averagetbodyaccmagmean          - This is the average of the measurement tbodyaccmagmean from the orginal dataset by subject and activity.          
* averagetbodyaccmagstd           - This is the average of the measurement tbodyaccmagstd from the orginal dataset by subject and activity.           
* averagetgravityaccmagmean       - This is the average of the measurement tgravityaccmagmean from the orginal dataset by subject and activity.       
* averagetgravityaccmagstd        - This is the average of the measurement tgravityaccmagstd from the orginal dataset by subject and activity.        
* averagetbodyaccjerkmagmean      - This is the average of the measurement tbodyaccjerkmagmean from the orginal dataset by subject and activity.      
* averagetbodyaccjerkmagstd       - This is the average of the measurement tbodyaccjerkmagstd from the orginal dataset by subject and activity.       
* averagetbodygyromagmean         - This is the average of the measurement tbodygyromagmean from the orginal dataset by subject and activity.         
* averagetbodygyromagstd          - This is the average of the measurement tbodygyromagstd from the orginal dataset by subject and activity.          
* averagetbodygyrojerkmagmean     - This is the average of the measurement tbodygyrojerkmagmean from the orginal dataset by subject and activity.     
* averagetbodygyrojerkmagstd      - This is the average of the measurement tbodygyrojerkmagstd from the orginal dataset by subject and activity.      
* averagefbodyaccmeanx            - This is the average of the measurement fbodyaccmeanx from the orginal dataset by subject and activity.            
* averagefbodyaccmeany            - This is the average of the measurement fbodyaccmeany from the orginal dataset by subject and activity.            
* averagefbodyaccmeanz            - This is the average of the measurement fbodyaccmeanz from the orginal dataset by subject and activity.            
* averagefbodyaccstdx             - This is the average of the measurement fbodyaccstdx from the orginal dataset by subject and activity.             
* averagefbodyaccstdy             - This is the average of the measurement fbodyaccstdy from the orginal dataset by subject and activity.             
* averagefbodyaccstdz             - This is the average of the measurement fbodyaccstdz from the orginal dataset by subject and activity.             
* averagefbodyaccjerkmeanx        - This is the average of the measurement fbodyaccjerkmeanx from the orginal dataset by subject and activity.        
* averagefbodyaccjerkmeany        - This is the average of the measurement fbodyaccjerkmeany from the orginal dataset by subject and activity.        
* averagefbodyaccjerkmeanz        - This is the average of the measurement fbodyaccjerkmeanz from the orginal dataset by subject and activity.        
* averagefbodyaccjerkstdx         - This is the average of the measurement fbodyaccjerkstdx from the orginal dataset by subject and activity.         
* averagefbodyaccjerkstdy         - This is the average of the measurement fbodyaccjerkstdy from the orginal dataset by subject and activity.         
* averagefbodyaccjerkstdz         - This is the average of the measurement fbodyaccjerkstdz from the orginal dataset by subject and activity.         
* averagefbodygyromeanx           - This is the average of the measurement fbodygyromeanx from the orginal dataset by subject and activity.           
* averagefbodygyromeany           - This is the average of the measurement fbodygyromeany from the orginal dataset by subject and activity.           
* averagefbodygyromeanz           - This is the average of the measurement fbodygyromeanz from the orginal dataset by subject and activity.           
* averagefbodygyrostdx            - This is the average of the measurement fbodygyrostdx from the orginal dataset by subject and activity.            
* averagefbodygyrostdy            - This is the average of the measurement fbodygyrostdy from the orginal dataset by subject and activity.            
* averagefbodygyrostdz            - This is the average of the measurement fbodygyrostdz from the orginal dataset by subject and activity.            
* averagefbodyaccmagmean          - This is the average of the measurement fbodyaccmagmean from the orginal dataset by subject and activity.          
* averagefbodyaccmagstd           - This is the average of the measurement fbodyaccmagstd from the orginal dataset by subject and activity.           
* averagefbodybodyaccjerkmagmean  - This is the average of the measurement fbodybodyaccjerkmagmean from the orginal dataset by subject and activity.  
* averagefbodybodyaccjerkmagstd   - This is the average of the measurement fbodybodyaccjerkmagstd from the orginal dataset by subject and activity.   
* averagefbodybodygyromagmean     - This is the average of the measurement fbodybodygyromagmean from the orginal dataset by subject and activity.     
* averagefbodybodygyromagstd      - This is the average of the measurement fbodybodygyromagstd from the orginal dataset by subject and activity.      
* averagefbodybodygyrojerkmagmean - This is the average of the measurement fbodybodygyrojerkmagmean from the orginal dataset by subject and activity.
* averagefbodybodygyrojerkmagstd  - This is the average of the measurement fbodybodygyrojerkmagstd from the orginal dataset by subject and activity.  

## Citation
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012