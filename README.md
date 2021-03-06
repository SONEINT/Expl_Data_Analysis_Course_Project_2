DATA SCIENCE SPECIALIZATION COURSE - EXPLORATORY DATA ANALYSIS - COURSE PROJECT 2
==================================================================================
Coursera - Exploratory Data Analysis

![Exploratory Data Analysis](https://github.com/SONEINT/Expl_Data_Analysis_Course_Project_2/raw/master/images/ExploratoryDataAnalysis.jpg)

United States Environmental Protection Agency

![EPA](https://github.com/SONEINT/Expl_Data_Analysis_Course_Project_2/raw/master/images/EPA.jpg)

PART I : IMPORTANT INSTRUCTIONS
--------------------------------------------------------

### Description of the Github repository

You would find:

* A README RMD file for general instructions anf exploratory data analysis course projetc 2 general instructions
* CodeBook RMD file for general description of data sets and some definitions, with in particular _coal combustion sources_ and _motor vehicules sources_ definitions choices (IMPORTANT TO READ)
* Plots PNG images directory with plot1, plot2, plot3, plot4, plot5 and plot6 PNG format images ;
* Plots R codes directory with R codes to produce plot1, plot2, plot3, plot4, plot5 and plot6 PNG files ;
* Plots R codes in PDF format (for Coursera purposes)
* Plots R codes in TXT format (for Coursera purposes)
* A references directory for reference documentations and original datasets

I suggest you read first the PART I of the README RMD file and have a look the CodeBook RMD file.

### Definition of Coal Combustion sources from EPA references and SCC/NEI datasets analysis

After several discussions on **Coursera Exploratory Data Analysis Forums**, quick analysis of the **EPA National Emissions Inventory documentations** (references 1 & 2) and deep analysis of the `SCC` & `NEI` datasets I have decided to retain as **Coal Combustion sources** the **four Coal Comabustion Category sources from EI sectors** and the **four Level Three Category sources**:

EI SECTORS:
* Fuel Comb - Comm/Institutional - Coal
* Fuel Comb - Electric Generation - Coal
* Fuel Comb - Industrial Boilers, ICEs - Coal
* Fuel Comb - Residential - Other -----------------> (partially)

LEVEL THREE CATEGORIES:
* Anthracite Coal
* Bituminous/Subbituminous Coal
* Lignite
* Lignite Coal

See the CodeBook RMD file for further explanantions.

### Definition of Motor Vehicle Emissions sources from MOVES (Motor Vehicle Emission Simulator) EPA Website:

As explained in the Website of MOVES2010, the "**MOVES2010** is the state-of-the-art upgrade to EPA’s modeling tools for estimating **emissions from highway vehicles**, based on analysis of millions of emission test results and considerable advances in the Agency’s understanding of vehicle emissions. MOVES2010 replaces the previous model for estimating **on-road mobile source emissions**, MOBILE6.2".

So, I have decided to retain for **Motor Vehicle Emissions** the **Emissions from Highway Vehicles**.

See the CodeBook RMD file for further explanantions.

PART II : COURSE PROJECT INSTRUCTIONS
--------------------------------------------------------

### Introduction

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

### Data

The data for this assignment are available from the course web site as a single zip file:

[Data for Peer Assessment](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip) [29Mb]

The zip file contains two files:

PM2.5 Emissions Data (`summarySCC_PM25.rds`): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of **tons** of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.


```r
##     fips      SCC Pollutant Emissions  type year
## 4  09001 10100401  PM25-PRI    15.714 POINT 1999
## 8  09001 10100404  PM25-PRI   234.178 POINT 1999
## 12 09001 10100501  PM25-PRI     0.128 POINT 1999
## 16 09001 10200401  PM25-PRI     2.036 POINT 1999
## 20 09001 10200504  PM25-PRI     0.388 POINT 1999
## 24 09001 10200602  PM25-PRI     1.490 POINT 1999
```

Legend:

* `fips`: A five-digit number (represented as a string) indicating the U.S. county
* `SCC`: The name of the source as indicated by a digit string (see source code classification table)
* `Pollutant`: A string indicating the pollutant
* `Emissions`: Amount of PM2.5 emitted, in tons
* `type`: The type of source (point, non-point, on-road, or non-road)
* `year`: The year of emissions recorded

Source Classification Code Table (`Source_Classification_Code.rds`): This table provides a mapping from the SCC digit strings int he Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

You can read each of the two files using the `readRDS()` function in R. For example, reading in each file can be done with the following code:

```
## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
```

as long as each of those files is in your current working directory (check by calling dir() and see if those files are in the listing).

### Assignment

The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

### Questions

You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the **base** plotting system, make a plot showing the _total_ PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

2. Have total emissions from PM2.5 decreased in the **Baltimore City**, Maryland `(fips == "24510")` from 1999 to 2008? Use the **base** plotting system to make a plot answering this question.

3. Of the four types of sources indicated by the `type` (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for **Baltimore City**? Which have seen increases in emissions from 1999–2008? Use the **ggplot2** plotting system to make a plot answer this question.

4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

5. How have emissions from motor vehicle sources changed from 1999–2008 in **Baltimore City**?

6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in **Los Angeles County**, California (`fips == "06037"`). Which city has seen greater changes over time in motor vehicle emissions?

### Making and Submitting Plots

For each plot you should

Construct the plot and save it to a **PNG file**.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that constructs the corresponding plot, i.e. code in `plot1.R` constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You should also include the code that creates the PNG file. Only include the code for a single plot (i.e. `plot1.R` should only include code for producing `plot1.png`)
* Upload the PNG file on the Assignment submission page
* Copy and paste the R code from the corresponding R file into the text box at the appropriate point in the peer assessment.

PART III : RESOURCES
--------------------------------------------------------

1. [Exploratory Data Analysis course at @Coursera](https://www.coursera.org/course/exdata)

2. [Markdown](https://support.rstudio.com/hc/en-us/articles/200488468-R-Markdown)

3. EPA Government references

Reference 1. [2011 National Emissions Inventory, version 1 Technical Support Document November 2013 - DRAFT](http://www.epa.gov/ttn/chief/net/2008neiv3/2008_neiv3_tsd_draft.pdf)
Reference 2. [2008 National Emissions Inventory, version 3 Technical Support Document September 2013 - DRAFT](http://www.epa.gov/ttn/chief/net/2011nei/2011_neiv1_tsd_draft.pdf)

4. STATE Government references

Reference 3. [Methodologies for U.S. Greenhouse Gas Emissions Projections: Non-CO2 and Non-Energy CO2 Sources DECEMBER, 2013](http://www.state.gov/documents/organization/219472.pdf)

5. MOVES Government references

Reference 4. [MOVES (Motor Vehicle Emission Simulator) Website](http://www.epa.gov/otaq/models/moves/index.htm)

Reference 5. [MOVES FAQ](http://www.epa.gov/otaq/models/moves/420f09073.pdf)

