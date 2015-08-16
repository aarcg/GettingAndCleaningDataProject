# buildFrame()
#
# Take a directory and build/return a data frame:
# 'subject'  'activity'  'feature_1'  'feature_2' ... 'feature_n'
#
# @param character directory, character features, character activities
# @return data.frame
buildFrame <- function(directory = character(),
                       features = character(),
                       activities = character(),
                       subsetVector = int()) {
  
  # Create proper file paths
  subjects <- file.path(directory, paste0("subject_", basename(directory), ".txt"))
  x <- file.path(directory, paste0("X_", basename(directory), ".txt"))
  y <- file.path(directory, paste0("y_", basename(directory), ".txt"))
  
  # Read in the files
  df.subjects <- read.table(subjects)
  df.x <- read.table(x)
  df.y <- read.table(y)
  
  # Set the names for the features in x
  names(df.x) = features
  
  # Subset the x dataframe
  df.x <- df.x[,subsetVector]
  
  df.data <- data.frame("subject" = df.subjects[,1],
                        "activity" = activities[df.y[,1]],
                        df.x)
}