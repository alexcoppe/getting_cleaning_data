CodeBook for the tidy dataset
===========================
##Original Data
The original dataset is from "Human Activity Recognition Using Smartphones Data Set" 
made avaiable here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##Tidy Dataset
Tidy data set contains the average of all standard deviation and mean values of the variables of the original dataset.

 * subject: The participant identifier
 * activity: The activity performed when the corresponding measurements were taken. Possible values:
    * `WALKING` (value 1)
    * `WALKING_UPSTAIRS` (value 2)
    * `WALKING_DOWNSTAIRS` (value 3)
    * `SITTING` (value 4)
    * `STANDING` (value 5)
    * `LAYING` (value 6)
  * All subsequent variables: see `features.txt` from the original dataset. Variable names are cleaned up with `make.names` funciton and . characters are removed.
