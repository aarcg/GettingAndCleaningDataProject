# analyze()
#
# Analyse the dataset
# Create one observation from each activity for each subject
#
# @param data.frame data
# @return data.frame
analyze <- function(tidyData) {
  
  # The list that will hold the results
  analyzedList <- list()
  
  # Get the subjects and activities that need to be analysed
  subjects <- unique(tidyData$subject) # unique() since subject is int
  activities <- levels(tidyData$activity) # levels since activity is factor
  
  # Loop over subjects and activities and store the analysis in a list
  for(s in subjects) {
    for(a in activities) {
      analyzedList[[length(analyzedList) + 1]] <- list(
        subject = s,
        activity = a,
        lapply(tidyData[tidyData$subject == s & tidyData$activity == a, 3:ncol(tidyData)], mean)
      )
    }
  }
  
  #build a dataframe from the list
  analyzedDataFrame <- do.call(rbind, lapply(analyzedList, data.frame))
  
  # Return the dataframe
  return(analyzedDataFrame)
  
}