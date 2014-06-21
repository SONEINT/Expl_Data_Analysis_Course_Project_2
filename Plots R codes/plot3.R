########################

### PM25_USA_EPA_NEI ###

########################

# Question 3: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
# Which have seen increases in emissions from 1999–2008? 
# Use the ggplot2 plotting system to make a plot answer this question.

########################

###    Resources     ###

########################

# EPA Government references
# Reference 1. 2011 National Emissions Inventory, version 1 Technical Support Document November 2013 - DRAFT
# http://www.epa.gov/ttn/chief/net/2008neiv3/2008_neiv3_tsd_draft.pdf
# Reference 2. 2008 National Emissions Inventory, version 3 Technical Support Document September 2013 - DRAFT
# http://www.epa.gov/ttn/chief/net/2011nei/2011_neiv1_tsd_draft.pdf

# STATE Government references
# Reference 3. Methodologies for U.S. Greenhouse Gas Emissions Projections: Non-CO2 and Non-Energy CO2 Sources DECEMBER, 2013
# http://www.state.gov/documents/organization/219472.pdf

# reshape2
# 1. CRAN - http://cran.r-project.org/web/packages/reshape2/index.html
# 2. Sean C. Anderson Blog - An Introduction to reshape2 - http://seananderson.ca/2013/10/19/reshape.html

# ggplot2
# http://docs.ggplot2.org

########################

###   plot3 R code   ###

########################

# Create a function called plot3_TotalEmissionsPM2.5_BALTIMORE_Source_1999_to_2008() to do the requested plot

plot3_TotalEmissionsPM2.5_BALTIMORE_Source_1999_to_2008 = function()
{
  library(reshape2) # use reshape2 to clean and prepare the data
  library(ggplot2) # use ggplot2 to plot
  library(scales) # use scale functions to modify aesthetics to legend's plot
  
  # Set the working directory on my local machine
  setwd("~/Desktop/Data Science Specialization/Exploratory Data Analysis/Course project 2")
  
  # Read the PM2.5 Emissions Data in summarySCC_PM25.rds file with readRDS() function
  NEI <- readRDS("summarySCC_PM25.rds")
  
  # Read the Source Classification Code Table in Source_Classification_Code.rds file with readRDS() function 
  SCC <- readRDS("Source_Classification_Code.rds")
  
  # Define the Baltimore dataset
  # Subset of PM2.5 Emissions Data with NEI$fips == "24510"
  NEI_Baltimore <- subset(NEI, fips == "24510")
  
  # Split the PM2.5 emissions in Baltimore dataset into two column frame year and type, with melt() function
  NEI_Baltimore_Year_Type <- melt(NEI_Baltimore, id.vars = c("year","type"), measure.vars="Emissions")
  
  # Sum the PM2.5 emmmissions in Baltimore resulting dataset by year and type variable with dcast() function
  NEI_baltimore_Year_Type_Sum <- dcast(NEI_Baltimore_Year_Type, year + type ~ variable, fun.aggregate = sum, na.rm = TRUE)
  
  # Create a function g with ggplot() function with NEI_baltimore_Year_Type_Sum dataset
  g <- ggplot(data = NEI_baltimore_Year_Type_Sum, aes(x = year, y = Emissions, color = type))
  # Add line
  g <- g + geom_line()
  # Add points
  g <- g + geom_point(aes(colour = type), size = 4, alpha = 1/2)
  # separate in a four facets plots per type
  g <- g + facet_grid(.~ type)
  # Add a title to the plot
  g <- g + ggtitle("PM2.5 Emissions by Source Type in Baltimore (USA)")
  # Use scale function to modify legend title "Type" by "Source Type"
  g <- g + scale_color_discrete(name = "Source Type") 
  # Add a legend on x with "Year"
  g <- g + xlab("Year")
  # Add a legend on y with "PM2.5 Emissions (Tons)
  g <- g + ylab("PM2.5 Emissions (Tons)")
  # Modify themes of the plot
  g <- g + theme_bw(base_family = "Times", base_size = 10)
  
  # print the plot()
  print(g)
  
  # Save png file in working directory
  dev.copy(png, filename = "plot3.png", height = 600, width = 800, unit = "px", bg = "transparent")
  
  # Release screen
  dev.off()
}

plot3_TotalEmissionsPM2.5_BALTIMORE_Source_1999_to_2008()

# Answer 3: 
# PM2.5 Total Emissions in Baltimore from NON-ROAD, NONPOINT and ON-ROAD sources decreased between 1999 and 2008.
# PM2.5 Total Emissions in Baltimore from POINT source increased between 1999 and 2008.

  