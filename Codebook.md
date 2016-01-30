CodeBook 

This Codebook gives information on variables of the Tidy dataset, a brief description of each variable including the units of measurement. In the end, it also gives a brief description of the transformations that were made to clean up the  data and produce a tidy dataset.

Variables

 [1] "subject" 
      The ID of the participant taking part in the experiment. Range 1-30.                                              
 [2] "activity"  
      The activity performed by the subject when corresponsing measurements were taken. The activities performed were "LAYING","SITTING","STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"                                            
 [3] "timebodyacceleration.mean().x"                         
 [4] "timebodyacceleration.mean().y"                         
 [5] "timebodyacceleration.mean().z" 
      Mean of the 3-axial body acceleration signals derived in time in the x,y and z directions. These signals are measured in standard gravity units 'g'.                        
 [6] "timebodyacceleration.std().x"                          
 [7] "timebodyacceleration.std().y"                          
 [8] "timebodyacceleration.std().z"  
      Standard deviation of the 3-axial body acceleration signals derived in time in the x,y and z directions. Units 'g'.
 [9] "timegravityacceleration.mean().x"                      
[10] "timegravityacceleration.mean().y"                      
[11] "timegravityacceleration.mean().z"  
      Mean of the 3-axial gravity acceleration signals derived in time in the x,y and z directions. Units 'g'.             
[12] "timegravityacceleration.std().x"                       
[13] "timegravityacceleration.std().y"                       
[14] "timegravityacceleration.std().z" 
      Standard deviation of the 3-axial gravity acceleration signals derived in time in the x,y and z directions. Units'g' 
[15] "timebodyaccelerationjerk.mean().x"                     
[16] "timebodyaccelerationjerk.mean().y"                     
[17] "timebodyaccelerationjerk.mean().z"
      Mean of the body linear acceleration jerk signals derived in time in the x,y and z directions.Units 'g'.             
[18] "timebodyaccelerationjerk.std().x"                      
[19] "timebodyaccelerationjerk.std().y"                      
[20] "timebodyaccelerationjerk.std().z"  
      Standard deviation of the body linear acceleration jerk signals derived in time in the x,y and z directions.Units'g' 
[21] "timebodygyroscope.mean().x"                            
[22] "timebodygyroscope.mean().y"                            
[23] "timebodygyroscope.mean().z" 
      Mean of the angular velocity derived in time in the x,y and z directions. Units are radians/second.                  
[24] "timebodygyroscope.std().x"                             
[25] "timebodygyroscope.std().y"                             
[26] "timebodygyroscope.std().z" 
      Standard deviation of the angular velocity derived in time in the x,y and z directions. Units radians/second.        
[27] "timebodygyroscopejerk.mean().x"                        
[28] "timebodygyroscopejerk.mean().y"                        
[29] "timebodygyroscopejerk.mean().z" 
      Mean of the angular velocity jerk signals derived in time in the x,y and z directions. Units radians/second.        
[30] "timebodygyroscopejerk.std().x"                         
[31] "timebodygyroscopejerk.std().y"                         
[32] "timebodygyroscopejerk.std().z"
      Standard deviation of the angular velocity jerk signals derived in time in the x,y and z directions.Units radians/second.                 
[33] "timebodyaccelerationmagnitude.mean()"                  
[34] "timebodyaccelerationmagnitude.std()"                   
[35] "timegravityaccelerationmagnitude.mean()"               
[36] "timegravityaccelerationmagnitude.std()"                
[37] "timebodyaccelerationjerkmagnitude.mean()"              
[38] "timebodyaccelerationjerkmagnitude.std()"               
[39] "timebodygyroscopemagnitude.mean()"                     
[40] "timebodygyroscopemagnitude.std()"                      
[41] "timebodygyroscopejerkmagnitude.mean()"                 
[42] "timebodygyroscopejerkmagnitude.std()"
      Magnitude of the three-dimensional signals calculated using the Euclidean norm.            
[43] "frequencybodyacceleration.mean().x"                    
[44] "frequencybodyacceleration.mean().y"                    
[45] "frequencybodyacceleration.mean().z"                    
[46] "frequencybodyacceleration.std().x"                     
[47] "frequencybodyacceleration.std().y"                     
[48] "frequencybodyacceleration.std().z"                     
[49] "frequencybodyacceleration.meanfrequency().x"           
[50] "frequencybodyacceleration.meanfrequency().y"           
[51] "frequencybodyacceleration.meanfrequency().z"           
[52] "frequencybodyaccelerationjerk.mean().x"                
[53] "frequencybodyaccelerationjerk.mean().y"                
[54] "frequencybodyaccelerationjerk.mean().z"                
[55] "frequencybodyaccelerationjerk.std().x"                 
[56] "frequencybodyaccelerationjerk.std().y"                 
[57] "frequencybodyaccelerationjerk.std().z"                 
[58] "frequencybodyaccelerationjerk.meanfrequency().x"       
[59] "frequencybodyaccelerationjerk.meanfrequency().y"       
[60] "frequencybodyaccelerationjerk.meanfrequency().z"       
[61] "frequencybodygyroscope.mean().x"                       
[62] "frequencybodygyroscope.mean().y"                       
[63] "frequencybodygyroscope.mean().z"                       
[64] "frequencybodygyroscope.std().x"                        
[65] "frequencybodygyroscope.std().y"                        
[66] "frequencybodygyroscope.std().z"                        
[67] "frequencybodygyroscope.meanfrequency().x"              
[68] "frequencybodygyroscope.meanfrequency().y"              
[69] "frequencybodygyroscope.meanfrequency().z"              
[70] "frequencybodyaccelerationmagnitude.mean()"             
[71] "frequencybodyaccelerationmagnitude.std()"              
[72] "frequencybodyaccelerationmagnitude.meanfrequency()"    
[73] "frequencybodyaccelerationjerkmagnitude.mean()"         
[74] "frequencybodyaccelerationjerkmagnitude.std()"          
[75] "frequencybodyaccelerationjerkmagnitude.meanfrequency()"
[76] "frequencybodygyroscopemagnitude.mean()"                
[77] "frequencybodygyroscopemagnitude.std()"                 
[78] "frequencybodygyroscopemagnitude.meanfrequency()"       
[79] "frequencybodygyroscopejerkmagnitude.mean()"            
[80] "frequencybodygyroscopejerkmagnitude.std()"             
[81] "frequencybodygyroscopejerkmagnitude.meanfrequency()"
      Frequency domain signals after applying Fast Fourier Transform. Mean frequency obtained by taking the weighted average of the frequency components.   
[82] "angle(timebodyaccelerationmean,gravity)"               
[83] "angle(timebodyaccelerationjerkmean),gravitymean)"      
[84] "angle(timebodygyroscopemean,gravitymean)"              
[85] "angle(timebodygyroscopejerkmean,gravitymean)"          
[86] "angle(x,gravitymean)"                                  
[87] "angle(y,gravitymean)"                                  
[88] "angle(z,gravitymean)" 
      Angle between two vectors obtained by averaging the signals in a signal window sample. 

 The following steps were performed to produce the Tidy.txt file as the required output for this Course project:
1. Download the data using the link "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip".    
2. Unzip the file and save the dataset in the working directory.
3. Load the Test and Training datasets along with the features and activity_labels using read.table function.
4. Merge the Test and Training datasets into one dataset using rbind function.
5. Name the variables of the mergedDataset with names from features.txt and add subject and activity columns to the merged Dataset.
6. Extract only the columns with measurements on the mean and standard deviation for each measurement.
7. Make a dataframe called "RequiredDataset" with subject,activity and meanSTD columns.
8. Replace the Activity Ids with activity labels.
9. Label the variable names of the "RequiredDataset" with descriptive names.
10.Using plyr package and ddply function,  create a final, independent tidy data set with the average of each variable for each activity and each subject.
11.Using write.table function create a Tidy.txt file in the working directory.