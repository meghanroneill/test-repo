# Header -----------------------------------------------------------------------
#
# Demo Script 
#
# Author: Meghan O'Neill
#
# Purpose: Script that uses demoFunction in test-repo to test out GitHub
# and bare repos on the network
#
# Demo script from; 
# http://hselab.org/content/create-sequence-plots-r-and-ggplot2-and-save-pdfs
#
# Setup ------------------------------------------------------------------------

# get library
require(ggplot2)

# get data
sched_df <- read.csv("SchedDaysAdv.csv")

# remove '/' from Service in data file (causes errors)
levels(sched_df$Service)[levels(sched_df$Service) == "Urology/GU Surgery"] <- 
  "Urology GU Surgery"

# source function
source("demoFunction.R")

# Script -----------------------------------------------------------------------

# get plots, printed as pdfs and saved in list
svc <- lapply(unique(sched_df$Service), doPlotSVC)

# END --------------------------------------------------------------------------
