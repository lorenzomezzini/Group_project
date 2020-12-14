#-----------------------------------------------------#
# Eleonora Gasparri and Lorenzo Mezzini
# 15/12/2020
#-----------------------------------------------------#


# load the required packages
packages <- c(
  "here", # for the project's organization
  "tidyverse", "lubridate", # for wrangling
  "ggrepel", "gghighlight", "patchwork", "maps", "scales", # for plotting
  "knitr", "kableExtra", "bookdown", "rmarkdown", # for the report
  "readxl", "ggmap", "DT", "dygraphs", "leaflet", "htmltools" ,"rgdal", "shiny" ,"RColorBrewer", "plotly",
  "gapminder", "corrplot", "plm", "stargazer", "lmtest", "prettydoc", "sjPlot", "sjmisc", "sjlabelled"
)
purrr::walk(packages, library, character.only = TRUE)


######################################################
## The following sets a few option for nice reports ##
######################################################

#A function we will need throughout the project
'%nin%' <- Negate('%in%')

# general options
options(
  digits = 4,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = FALSE
)

