# cleanNames()
#
# Take the list of features and convert them to more tidy values
#
# @param character unformatted
# @return character
cleanNames <- function(unformatted = character()) {
  formatted <- character()
  
  # First, remove dashes and parens '()'
  formatted <- gsub("-|[ ( ]|[ ) ]", "", unformatted)
  
  # Replace mean with Mean
  formatted <- sub("mean", "Mean", formatted)
  
  # Replace std with StandardDeviation
  formatted <- sub("std", "StandardDeviation", formatted)
  
  # Replace leading t with time
  formatted <- sub("^t", "time", formatted)
  
  # Replace leading f with frequency
  formatted <- sub("^f", "frequency", formatted)
  
  # Replace Acc with Acceleration
  formatted <- sub("Acc", "Acceleration", formatted)
  
  # Replace Mag with Magnitude
  formatted <- sub("Mag", "Magnitude", formatted)
  
  # Remove doubled Body
  formatted <- sub("BodyBody", "Body", formatted)
  
  return(formatted)
  
}