########################

### PM25_USA_EPA_NEI ###

########################

# Question 2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.

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

# barplot
# 1 - http://www.ats.ucla.edu/stat/r/faq/barplotplus.htm
# 2 - http://www.spw.uzh.ch/vangijn/teaching/typologyinpractice/weekbyweek/R_Bar_plots.pdf

########################

###   plot2 R code   ###

########################

# Create a function called plot2_TotalEmissionsPM2.5_BALTIMORE_1999_to_2008() to do the requested plot

plot2_TotalEmissionsPM2.5_BALTIMORE_1999_to_2008 = function()
{
  # Set the working directory on my local machine
  setwd("~/Desktop/Data Science Specialization/Exploratory Data Analysis/Course project 2")
  
  # Read the PM2.5 Emissions Data in summarySCC_PM25.rds file with readRDS() function
  NEI <- readRDS("summarySCC_PM25.rds")
  
  # Read the Source Classification Code Table in Source_Classification_Code.rds file with readRDS() function 
  SCC <- readRDS("Source_Classification_Code.rds")
  
  # Define the Baltimore dataset
  # Subset of PM2.5 Emissions Data with NEI$fips == "24510"
  NEI_Baltimore <- subset(NEI, fips == "24510")
  # another method: NEI_Emmissions_Baltimore_Year <- NEI[NEI$fips==24510,]
  
  # Sum PM2.5 emissions in Baltimore by year with tapply() function
  NEI_Emmissions_Baltimore_Year <- tapply(NEI_Baltimore$Emissions, NEI_Baltimore$year, sum)
  
  # Plot barplot
  barplot(NEI_Emmissions_Baltimore_Year,
          names.arg = toupper(names(NEI_Emmissions_Baltimore_Year)),
          legend.text = TRUE,
          col = c("darkgreen", "olivedrab4", "green2", "darkolivegreen1"),
          border = "blue",
          xlab = "Year",
          ylab ="PM2.5 Emissions (Tons)",
          ylim=c(0,3500),
          main = "Baltimore (USA) Total PM25 Emissions from 1999 to 2008",
          font.main = 3,
          cex.main = 1.5,
          sub = "source : summarySCC_PM25.rds",
          cex.sub = 0.8,
          cex.names = 0.8,
          cex.axis = 0.8,
          args.legend = list(title = "Legend: Color - Year", x = "topright", cex = 0.75))
  # Add a dashed line relying each total emissions from PM2.5 for 1999, 2002, 2005, 2008
  lines(NEI_Emmissions_Baltimore_Year,lw = 2,col = "darkgrey",lty = 2,cex = 1)
  # Add points to each total emissions from PM2.5 for 1999, 2002, 2005, 2008           
  points(NEI_Emmissions_Baltimore_Year,lw = 4,col= "darkgrey", pch = 15)
  # Add all values for total emissions from PM2.5 for 1999, 2002, 2005, 2008 next to the points
  text(1, NEI_Emmissions_Baltimore_Year[1], labels = round(NEI_Emmissions_Baltimore_Year[1], 0), pos = 3,cex = 1)
  text(2, NEI_Emmissions_Baltimore_Year[2], labels = round(NEI_Emmissions_Baltimore_Year[2], 0), pos = 3,cex = 1)
  text(3, NEI_Emmissions_Baltimore_Year[3], labels = round(NEI_Emmissions_Baltimore_Year[3], 0), pos = 3,cex = 1)
  text(4, NEI_Emmissions_Baltimore_Year[4], labels = round(NEI_Emmissions_Baltimore_Year[4], 0), pos = 3,cex = 1)
  
  # Save png file in working directory
  dev.copy(png, filename = "plot2.png", height = 600, width = 800, unit = "px", bg = "transparent")
  
  # Release screen
  dev.off()
}

plot2_TotalEmissionsPM2.5_BALTIMORE_1999_to_2008()

# Answer 2: PM2.5 Total Emissions in Baltimore decreased in the USA between 1999 and 2008.
