NEI and SCC DATASETS PRESENTATION
==================================================================================

![Exploratory Data Analysis][https://github.com/SONEINT/Expl_Data_Analysis_Course_Project_2/blob/master/images/ExploratoryDataAnalysis.jpg]

![EPA][https://github.com/SONEINT/Expl_Data_Analysis_Course_Project_2/raw/master/images/EPA.jpg]

PART I : DATASET PRESENTATION
--------------------------------------------------------

### National Emissions Inventory (NEI)

The National Emissions Inventory (NEI) is a national compilation of emissions sources collected from state, local, and tribal air agencies as well as emissions information from the Environmental Protection Agency (EPA) emissions programs including the Toxics Release Inventory (TRI), emissions trading programs such as the Acid Rain Program, and data collected as part of EPA regulatory development for reducing emissions of air toxics. The NEI program develops datasets, blends data from these multiple sources, and performs quality assurance steps that further enhance and augment the compiled data. The emissions data in the NEI are compiled for detailed emissions processes within a facility for large “point” sources or as a county total for smaller “nonpoint” sources and spatially dispersed sources such as on-road and nonroad mobile sources. For wildfires and prescribed burning, the data are compiled as day-specific events in the “event” portion of the inventory.

### Polluants

The pollutants included in the NEI are the pollutants related to implementation of the National Ambient Air Quality Standards (NAAQS), known as criteria air pollutants (CAPs), as well as hazardous air pollutants (HAPs) associated with EPA’s Air Toxics Program. The CAPs have ambient concentration limits or are precursors for pollutants with such limits from the NAAQS program. These pollutants include lead (Pb), carbon monoxide (CO), nitrogen oxides (NOX), volatile organic compounds (VOC), sulfur dioxide (SO2), ammonia (NH3), particulate matter 10 microns or less (PM10) and *particulate matter 2.5 microns or less (PM2.5)*. The HAP pollutants include the 187 remaining HAP pollutants from the original 188 listed in Section 112(b) of the 1990 Clean Air Act 1 Amendments . Key HAP emissions sources include mercury (Hg), hydrochloric acid (HCl) and other acid gases, heavy metals such as nickel and cadmium, and hazardous organic compounds such as benzene, formaldehyde, and acetaldehyde.

### PM2.5 

The assignment is relative to PM2.5 polluant measures.

The *Fine particulate matter (PM2.5)* is an *ambient air pollutant for which there is strong evidence that it is harmful to human health*. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. 

The data that used for this assignment are for 1999, 2002, 2005, and 2008.

### Sources reported by Air Emissions Reporting Rule (AERR)

The AERR requires agencies to report all sources of emissions, *except fires and biogenic sources*. *Open fire sources* such as wildfires are *encouraged but not required*.

Sources are *divided into large groups* called *“data categories”*: 

* *stationary sources* are “point” or “nonpoint” (county totals) ;
* *mobile sources* are either *on-road* (cars and trucks driven on roads) or *non-road* (locomotives, aircraft, marine, off-road vehicles and nonroad equipment such as lawn and garden equipment).

Based on the AERR requirements, S/L/T agencies submit emissions or model inputs of *point, nonpoint, on-road mobile,non-road mobile,and fires emissions sources*.

The *sectors* were developed to better *group emissions for both CAP and HAP summary purposes*. The sectors are based sim ply on grouping the emissions by the emissions process based on the *source classification code (SCC)* to the EIS sector

The SCC-EIS Sector cross-walk used for the summaries provided can be found in the Microsoft® Excel ® spreadsheet [scc_eissector_xwalk_2011neiv1.xlsx](ftp://ftp.epa.gov/EmisInventory/2011/doc/scc_eis_crosswalk_2011neiv1.xlsx) for 2011 NEI dataset.

### Definitions

* The *NEI Point data category* contains emissions estimates for sources that are individually inventoried and usually located at a fixed, stationary location, although portable sources such as some asphalt or rock crushing operations are also included. Point sources include large industrial facilities and electric power plants, but also increasingly include many smaller industrial and commercial facilities, such as dry cleaners and gas stations, which had traditionally been included in Nonpoint sources. The choice of whether these smaller sources are estimated individually and included as point sources or inventoried as a Nonpoint source County or Tribal area aggregate is determined by the separate State, Local, or Tribal air agency.

* The *NEI Nonpoint data category* contains emissions estimates for sources which individually are too small in magnitude or too numerous to inventory as individual point sources, and which can often be estimated more accurately as a single aggregate source for a County or Tribal area. Examples are residential heating and consumer solvent use.

*The *NEI Onroad and Nonroad data categories* contain mobile sources which are estimated for the 2011 NEI v1 via the MOVES2010b and NONROAD models, respectively. NONROAD was run within the National Mobile Inventory Model (NMIM). Note that emissions data for aircraft, locomotives, and commercial marine vessels are not included in the Nonroad data category starting with the 2008 NEI. Aircraft engine emissions occurring during Landing and Takeoff operations and the Ground Support Equipment and Auxiliary Power Units associated with the aircraft are included in the point data category at individual airports. Emissions from locomotives that occur at rail yards are also included in the point data category. In-flight aircraft emissions, locomotive emissions outside of the rail yards, and commercial marine vessel emissions (both underway and port emissions) are included in the NonPoint data category.

*The *Events data category* includes wildfires, wild land fire use and prescribed burns. Wild land fire use is controlling a wildfire to use as a prescribed burn. This web page provides emissions for this data category as county totals. Day-specific and fire-specific emissions are available on the Emissions Modeling Clearinghouse with the 2011 emissions platform data.


PART II : VARIABLE DEFINITION (Coal Combustion & Motor Vehicle Emissions)
--------------------------------------------------------

### Definition of Coal Combustion sources from EPA references and SCC/NEI datasets analysis

After several discussions on *Coursera Exploratory Data Analysis Forums*, quick analysis of the * EPA National Emissions Inventory documentations* (references 1 & 2) and deep analysis of the `SCC` & `NEI` datasets I have decided to retain as *Coal Combustion sources* the *four Coal Comabustion Category sources from EI sectors*:

* Fuel Comb - Comm/Institutional - Coal
* Fuel Comb - Electric Generation - Coal
* Fuel Comb - Industrial Boilers, ICEs - Coal
* Fuel Comb - Residential - Other -----------------> (partially)





