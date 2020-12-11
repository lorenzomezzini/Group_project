source(here::here("scripts/setup.R"))

# import the shape file
States <- readOGR(here::here("data/cb_2013_us_state_20m.shp"),
                  layer = "cb_2013_us_state_20m", GDAL1_integer64_policy = TRUE)
States <- subset(States, States$STUSPS %nin% c("PR"))


# Adding population in the data
population <- demographics[order(factor(demographics$State, levels = States@data[["NAME"]])),]

population <- population %>%
  filter(State != "United States") %>%
  select(State, year, population)%>%
  pivot_wider(names_from = year, values_from = population) %>%
  select(-State)

# Adding GDP in the data
gdp <- GDP_Cleaned[order(factor(GDP_Cleaned$State, levels =States@data[["NAME"]])),]

gdp <- gdp %>%
  filter(State != "United States") %>%
  select(State, year, Current_dollar_GDP_millions)%>%
  pivot_wider(names_from = year, values_from = Current_dollar_GDP_millions) %>%
  select(-State)


# Adding crimes in the data
crimes <- estimated_crimes[order(factor(estimated_crimes$State, levels =States@data[["NAME"]])),]

crimes <- crimes %>%
  filter(State != "United States") %>%
  mutate(homicide = homicide/population*1000, 
         violent_crime = violent_crime/population*1000,
         rape_legacy = rape_legacy/population*1000,
         aggravated_assault = aggravated_assault/population*1000
         ) %>%
  select(State, year, homicide,violent_crime, rape_legacy,aggravated_assault) %>%
  pivot_longer(c(homicide, 
                 violent_crime, 
                 rape_legacy, 
                 aggravated_assault), 
               names_to = 'kind', values_to = 'count') %>%
  pivot_wider(names_from = year, values_from = count)%>%
  select(-State)

# Adding mental Healt expenditure
mh <- mh_exp[order(factor(mh_exp$State, levels =States@data[["NAME"]])),]


mh <- mh %>%
  filter(State != "United States") %>%
  select(State, year, mh_exp_pc)%>%
  pivot_wider(names_from = year, values_from = mh_exp_pc) %>%
  select(-State)




States@data[["pop"]] = population
States@data[["gdp"]] = gdp[1:51,]
States@data[["homicide"]] = filter(crimes, kind == 'homicide') %>% select(-kind)
States@data[["violent_crime"]] = filter(crimes, kind == 'violent_crime') %>% select(-kind)
States@data[["rape_legacy"]] = filter(crimes, kind == 'rape_legacy') %>% select(-kind)
States@data[["aggravated_assault"]] = filter(crimes, kind == 'aggravated_assault') %>% select(-kind)
States@data[["mh"]] = mh[1:51,]

write_rds(States, path = file.path("shiny_app/States.rds"))

