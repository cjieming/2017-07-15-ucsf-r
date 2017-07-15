#!/bin/bash

########################################################################
# bash script to run all analyses for Software Carpentry workshop demo #
# Written by Naupaka Zimmerman October 2, 2015                         #
# Declared to be in the public domain                                  #
########################################################################

# Run all scripts to generate final report
bash 01_setupProject.sh
bash 02_cleanData.sh
bash 03_combine.sh

# Install the Rmarkdown library to render the Rmd
R -e "if(!require(rmarkdown)) install.packages('rmarkdown', repos='http://cran.us.r-project.org')"

# Render the Rmd
R -e "rmarkdown::render('04_capstone_analysis.Rmd')"
