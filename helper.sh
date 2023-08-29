#!/bin/bash

git clone https://github.com/markziemann/5pillars.git

cd 5pillars

Rscript -e 'install.packages(c("rmarkdown","rmdformats","RColorBrewer","png","shape","testthat"))'

Rscript -e 'rmarkdown::render("manuscript/5pillars.Rmd")'
