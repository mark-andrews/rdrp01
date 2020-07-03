# In RStudio, but usually not in a any project yet, create your bare bones R package with
usethis::create_package("path_to_package")

# By default this will open a new RStudio project
# There, load the usethis package
library(usethis)

# Give it a licence
use_mit_license("Mark Andrews")

# Make an Rmd readme
use_readme_rmd()

# Make NEWS
use_news_md()

# Add your package dependencies.
# This will modify DESCRIPTION
use_package("dplyr")
use_package("ggplot2")
use_pipe()
use_tibble()

# Make your blank R code file
use_r("demo_utils.R")
# Now, open that file and write your functions and the roxygen2

# load all
# document

# Add your raw data dir and your script to make the tidy data
# this will add the use_data
use_data_raw()

# Add your vignette

use_vignette(name = "demonstration", title = "A demo of the demopkg.")
use_git()
library(usethis)
library(pkgdown)
use_pkgdown()
library(pkgdown)
build_site()
