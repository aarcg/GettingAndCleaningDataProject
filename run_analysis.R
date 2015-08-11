# buildFrame()
#
# Take a directory and build/return a data frame:
# 'subject'  'activity'  'feature_1'  'feature_2' ... 'feature_n'
#
# @param character directory, character features, character activities
# @return data.frame
buildFrame <- function(directory = character(),
                       features = character(),
                       activities = character()) {
  
  # Create proper file paths
  subjects <- file.path(directory, paste("subject_", basename(directory), ".txt", sep = ""))
  x <- file.path(directory, paste("X_", basename(directory), ".txt", sep = ""))
  y <- file.path(directory, paste("y_", basename(directory), ".txt", sep = ""))

  # Read in the files
  df.subjects <- read.table(subjects)
  df.x <- read.table(x)
  df.y <- read.table(y)
  
  # Set the names for the features in x
  names(df.x) = features
  
  df.data <- data.frame("subject" = df.subjects[,1],
                          "activity" = activities[df.y[,1]],
                          df.x)
}

features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")
dirs <- list.dirs(recursive = FALSE)

# Create a list that will hold our data frames
data <- list()

for(i in 1:length(dirs)) {
  data[[i]] <- buildFrame(dirs[i], features[,2], activities[,2])
}

# Build the complete data frame and sort it by subject
data.complete <- rbind(data[[1]], data[[2]])
data.complete <- data.complete[order(data.complete$subject), ]