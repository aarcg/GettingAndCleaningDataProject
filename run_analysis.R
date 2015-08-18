source("./R/clean_names.R")
source("./R/build_frame.R")
source("./R/locate_data.R")
source("./R/analyze.R")

runAnalysis <- function() {
  dataDir <- file.path(locateData(list('data', '.')), "UCI HAR Dataset")
  
  features <- read.table(file.path(dataDir, "features.txt"), stringsAsFactors = FALSE)
  activities <- read.table(file.path(dataDir, "activity_labels.txt"))
  dirs <- list.dirs(path=dataDir, recursive = FALSE)
  
  # Format the feature names
  featureNames <- cleanNames(features[,2])
  
  # Build a vector to use in subsetting the dataframe
  subsetVector <- features[grep("mean[()]|std[()]", features[,2]),1]
  
  # Create a list that will hold our data frames
  dataframeList <- list()
  
  # Build the data frames
  print("Building tidy data...")
  for(i in 1:length(dirs)) {
    dataframeList[[i]] <- buildFrame(dirs[i], featureNames, activities[,2], subsetVector)
  }
  
  # Build the complete data frame and sort it by subject
  completeData <- rbind(dataframeList[[1]], dataframeList[[2]])
  completeData <- completeData[order(completeData$subject), ]
  
  # Save the tidy data
  print(paste("saving tidy data to", file.path(getwd(), "output", "tidy.txt")))
  write.table(completeData, file = file.path("output", "tidy.txt"), row.names = FALSE)
  
  # Analyse data and save a dataset
  analysedData <- analyze(completeData)
  print(paste("saving analysis to", file.path(getwd(), "output", "analysis.txt")))
  write.table(analysedData, file = file.path("output", "analysis.txt"), row.names = FALSE)
  
}