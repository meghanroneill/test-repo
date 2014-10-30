#-------------------------------------------------------------------------------
#
# Demo Script 
#
# Author: Meghan O'Neill
#
# Purpose: Script that uses demoFunction in test-repo to test out GitHub
# and bare repos on the network
#
# Demo from; 
# http://hselab.org/content/create-sequence-plots-r-and-ggplot2-and-save-pdfs
#
#-------------------------------------------------------------------------------

# get data
sched_df <- read.csv("SchedDaysAdv.csv")

# get plots
lapply(unique(sched_df$Service), doPlot)
