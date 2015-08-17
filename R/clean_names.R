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
  
  return(formatted)
  
}