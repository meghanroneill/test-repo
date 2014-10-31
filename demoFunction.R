# HEADER-----------------------------------------------------------------------
#
# Demo Function 
#
# Author: Meghan O'Neill
#
# Purpose: piece of code to use in test-repo to test out GitHub and bare
# repos on the network
#
# Demo code from; 
# http://hselab.org/content/create-sequence-plots-r-and-ggplot2-and-save-pdfs
#
# FUNCTION----------------------------------------------------------------------

doPlot = function(svc_name) {
  # Just get the records for this service
  temp_df = subset(sched_df, Service == svc_name)
  
  # Create the plot object
  ggobj = ggplot(temp_df, aes(x = ScheduledDaysInAdvance)) + geom_histogram(aes(y = ..density..), 
                                                                            binwidth = 4)
  
  # Add some titles and axis labels
  ggobj = ggobj + ggtitle(svc_name) + xlab("Scheduled Days in Advance") + 
    ylab("Frequency")
  
  # Need to use print() to actually produce the plot
  print(ggobj)
  
  # Save to PDF
  ggsave(sprintf("%s.pdf", svc_name))
}
