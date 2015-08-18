# locateData()
#
# Attempt to locate data and download if not available
#
# 
locateData <- function(dataDirs) {
  foundIn <- character()
  
  # Look in each directory for unzipped data.
  # If not found, look for zipped data and unzip it.
  for (directory in dataDirs) {
    if(dir.exists(file.path(directory, 'UCI HAR Dataset'))) {
      foundIn <- directory
    } else if (file.exists(file.path(directory, "getdata-projectfiles-UCI HAR Dataset.zip"))) {
      # unzip thie file to the data directory and return that directory
      print("Unzipping raw data")
      unzip(file.path(directory, "getdata-projectfiles-UCI HAR Dataset.zip"), exdir = "data")
      foundIn <- "data"
    }
  }
  
  # If the data wasn't found, send an error
  if(length(foundIn) == 0) {
    stop("Could not locate the raw data")
  }
  
  return(foundIn)
  
}