PROJECT := reproworkshop
WORKDIR := $(CURDIR)

# list below your targets and their recipies
all: inflation.pdf
	repro::use_make_publish()README.md

data/raw/inflation.rds: R/download_inflation.R
	Rscript -e "source('$<')"
	
publish/: inflation.pdf
include .repro/Makefile_publish

### Rmd's ###
include .repro/Makefile_Rmds
