source("./HelperFunctions/clean_names.R")
source("./HelperFunctions/build_frame.R")
runAnalysis <- function(dataDir = ".") {
  
  features <- read.table(file.path(dataDir, "features.txt"), stringsAsFactors = FALSE)
  activities <- read.table(file.path(dataDir, "activity_labels.txt"))
  dirs <- list.dirs(path=dataDir, recursive = FALSE)
  
  # Format the feature names
  featureNames <- cleanNames(features[,2])
  
  # Build a vector to use in subsetting the dataframe
  subsetVector <- features[grep("mean[()]|std[()]", features[,2]),1]
  
  # Create a list that will hold our data frames
  data <- list()
  
  # Build the data frames
  print("Building tidy data...")
  for(i in 1:length(dirs)) {
    data[[i]] <- buildFrame(dirs[i], featureNames, activities[,2], subsetVector)
  }
  
  # Build the complete data frame and sort it by subject
  data.complete <- rbind(data[[1]], data[[2]])
  data.complete <- data.complete[order(data.complete$subject), ]
  
  # Save the tidy data
  print(paste("saving tidy data to", file.path(getwd(), "tidy.txt")))
  write.table(data.complete, file = "tidy.txt", row.names = FALSE)
}