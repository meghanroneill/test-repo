# HEADER-----------------------------------------------------------------------
<<<<<<< HEAD
#
# Demo Function 
=======
>>>>>>> develop
#
# Function Name: doPlotSVC 
# Project: 123299000 700 Technical Development
# Author: Meghan O'Neill
#
# Purpose: Piece of code to use in test-repo to test out GitHub and bare
# repos on the network. Incidentally, it saves multiple ggplots as a list
# and prints them.
#
# Requires: Folder called "Plot" must be created in working directory
#
# Demo code from; 
# http://hselab.org/content/create-sequence-plots-r-and-ggplot2-and-save-pdfs
#
# FUNCTION----------------------------------------------------------------------

doPlotSVC <- function(svc_name) {
      # Just get the records for this service
      temp_df <- sched_df[sched_df$Service == svc_name, ]
      
      # Create the plot object
      ggobj <- ggplot(
            temp_df, 
            aes(x = ScheduledDaysInAdvance)
      ) + 
            geom_histogram(aes(y = ..density..), binwidth = 4)
      
      # Add some titles and axis labels
      ggobj <- ggobj + 
            ggtitle(svc_name) + 
            xlab("Scheduled Days in Advance") + 
            ylab("Frequency")
      
      # Print() to actually produce the plot
      print(ggobj)
      
      # Save to PDF
      ggsave(sprintf("plot/%s.pdf", svc_name))
      
      return (ggobj)
}

# END---------------------------------------------------------------------------
