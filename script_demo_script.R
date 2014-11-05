# HEADER -----------------------------------------------------------------------
#
# Project: 123299000 700 Technical Development
# Author: Meghan O'Neill
#
# Purpose: This demo script creates ggplots from the SchedDaysAdv.csv file
# and saves them in a list and as pdfs using the function doPlotSVC.
#
# Original code from; 
# http://hselab.org/content/create-sequence-plots-r-and-ggplot2-and-save-pdfs
#
# SETUP ------------------------------------------------------------------------

# Libraries
require(ggplot2)

# Data
sched_df <- read.csv("SchedDaysAdv.csv")

# remove '/' from Service in data file (causes errors)
levels(sched_df$Service)[levels(sched_df$Service) == "Urology/GU Surgery"] <- 
      "Urology GU Surgery"

# Source function(s)
source("demoFunction.R")

# SCRIPT -----------------------------------------------------------------------

# get plots, one for each Service type, printed as pdfs and saved in list
svc <- lapply(unique(sched_df$Service), doPlotSVC)

# END --------------------------------------------------------------------------
