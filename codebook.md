# Codebook

This codebook describes the variables, the data, and works that I performed to clean up the data. 

## variables

### subject and activity
* Subject:subject ID
* Activity: activity labels
 + Walking
 + Walking Upstairs
 + Walking Downstairs
 + Sitting
 + Standing
 + Laying

### Measurement means
All measurement variables are the mean of measurements for each subject and activity.   

 -"timeBodyAccelerometerMeanXaxis"                
 -"timeBodyAccelerometerMeanYaxis"                
 -"timeBodyAccelerometerMeanZaxis"               
 -"timeBodyAccelerometerStdXaxis"  
 -"timeBodyAccelerometerStdYaxis"       
 -"timeBodyAccelerometerStdZaxis"   

 -"timeGravityAccelerometerMeanXaxis"     
 -"timeGravityAccelerometerMeanYaxis"           
 -"timeGravityAccelerometerMeanZaxis"          
 -"timeGravityAccelerometerStdXaxis"            
 -"timeGravityAccelerometerStdYaxis"           
 -"timeGravityAccelerometerStdZaxis"  
 -"timeGravityAccelerometerMeanXaxis"  
 
 -"timeBodyAccelerometerJerkMeanXaxis"          
 -"timeBodyAccelerometerJerkMeanYaxis"          
 -"timeBodyAccelerometerJerkMeanZaxis"         
 -"timeBodyAccelerometerJerkStdXaxis"  
 -"timeBodyAccelerometerJerkStdYaxis"  
 -"timeBodyAccelerometerJerkStdZaxis"
 
 -"timeBodyGyroscopeMeanXaxis"      
 -"timeBodyGyroscopeMeanYaxis"    
 -"timeBodyGyroscopeMeanZaxis"     
 -"timeBodyGyroscopeStdXaxis"    
 -"timeBodyGyroscopeStdYaxis"    
 -"timeBodyGyroscopeStdZaxis"    


 -"timeBodyGyroscopeJerkMeanXaxis"                
 -"timeBodyGyroscopeJerkMeanYaxis"  
 -"timeBodyGyroscopeJerkMeanZaxis"                 
 -"timeBodyGyroscopeJerkStdXaxis"    
 -"timeBodyGyroscopeJerkStdYaxis"    
 -"timeBodyGyroscopeJerkStdZaxis"    

 -"timeBodyAccelerometerMagnitudeMean"              
 -"timeBodyAccelerometerMagnitudeStd"    

 -"timeGravityAccelerometerMagnitudeMean"      
 -"timeGravityAccelerometerMagnitudeStd"

 -"timeBodyAccelerometerJerkMagnitudeMean"      
 -"timeBodyAccelerometerJerkMagnitudeStd"

 -"timeBodyGyroscopeMagnitudeMean"              
 -"timeBodyGyroscopeMagnitudeStd"

 -"timeBodyGyroscopeJerkMagnitudeMean"         
 -"timeBodyGyroscopeJerkMagnitudeStd"    

 -"frequencyBodyAccelerometerMeanXaxis"           
 -"frequencyBodyAccelerometerMeanYaxis"          
 -"frequencyBodyAccelerometerMeanZaxis"           
 -"frequencyBodyAccelerometerStdXaxis"            
 -"frequencyBodyAccelerometerStdYaxis"           
 -"frequencyBodyAccelerometerStdZaxis"    

 -"frequencyBodyAccelerometerJerkMeanXaxis"       
 -"frequencyBodyAccelerometerJerkMeanYaxis"      
 -"frequencyBodyAccelerometerJerkMeanZaxis"       
 -"frequencyBodyAccelerometerJerkStdXaxis"        
 -"frequencyBodyAccelerometerJerkStdYaxis"       
 -"frequencyBodyAccelerometerJerkStdZaxis"  

 -"frequencyBodyGyroscopeMeanXaxis"         
 -"frequencyBodyGyroscopeMeanYaxis"            
 -"frequencyBodyGyroscopeMeanZaxis"  
 -"frequencyBodyGyroscopeStdXaxis"    
 -"frequencyBodyGyroscopeStdYaxis"               
 -"frequencyBodyGyroscopeStdZaxis"    

 -"frequencyBodyAccelerometerMagnitudeMean"       
 -"frequencyBodyAccelerometerMagnitudeStd"     

 -"frequencyBodyAccelerometerJerkMagnitudeMean"   
 -"frequencyBodyAccelerometerJerkMagnitudeStd"  

 -"frequencyBodyGyroscopeMagnitudeMean"          
 -"frequencyBodyGyroscopeMagnitudeStd"       

 -"frequencyBodyGyroscopeJerkMagnitudeMean"       
 -"frequencyBodyGyroscopeJerkMagnitudeStd"  

## data    
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.  
[The experiments have been video-recorded to label the data manually](https://www.youtube.com/watch?v=XOEN9W05_4A)  
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.  
[A full description is available at the site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

## clean up
The script `run_analysis.R` gives a detailed information how the clean up of the raw data was down 
1. download and merge the datasets using `download.file`,`rbind`,`cbind`
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.  
5. Create tidy data set with the average of each variable for each activity and each subject
