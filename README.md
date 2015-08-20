# GettingAndCleaningDataProject

## Description
This set of scripts is used to clean and analyze data obtained from the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A more complete description of the experiment, along with the original data, can be found at the following site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Usage
1. Clone this repository using:
  - "git clone https://github.com/aarcg/GettingAndCleaningDataProject.git"
2. Change to the GettingAndCleaningDataProject" directory (for example "cd GettingAndCleaningDataProject").
3. Download the data from the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  - The data can be stored in either your current working directory (GettingAndCleaningDataProject), or in the "data" directory (see [Directory Structure](#Directory-Structure)). The data can remain zipped or be unzipped as long as the following naming conventions are followed.
    - Zipped data must be in a file named "getdata-projectfiles-UCI HAR Dataset.zip"
    - Unzipped data must be in a directory named "UCI HAR Dataset"
4. Start R and read in the run_analysis.R script using: source("run_analysis.R")
5. Reading the script in will give you a runAnalysis function. Simply invoke the function using: runAnalysis()
6. The script will run and build both a tidy dataset and an analysed dataset. These will be stored in the "output" directory with the names tidy.txt and analysis.txt respectively.

## Directory Structure
