# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
#            in this file are present all the data cleaning and wrangling             #
#                           functions for the inital seutp.                           #
# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #



# --------------------------------- EPENDITURE DATA --------------------------------- #

# Import 
raw_data_2004 <- read_csv(here::here("data/raw_data_2004.csv"), skip = 2) 
raw_data_2005 <- read_csv(here::here("data/raw_data_2005.csv"), skip = 2)
raw_data_2006 <- read_csv(here::here("data/raw_data_2006.csv"), skip = 2)
raw_data_2007 <- read_csv(here::here("data/raw_data_2007.csv"), skip = 2)
raw_data_2008 <- read_csv(here::here("data/raw_data_2008.csv"), skip = 2) 
raw_data_2009 <- read_csv(here::here("data/raw_data_2009.csv"), skip = 2) 
raw_data_2010 <- read_csv(here::here("data/raw_data_2010.csv"), skip = 2) 
raw_data_2011 <- read_csv(here::here("data/raw_data_2011.csv"), skip = 2) 
raw_data_2012 <- read_csv(here::here("data/raw_data_2012.csv"), skip = 2) 
raw_data_2013 <- read_csv(here::here("data/raw_data_2013.csv"), skip = 2) 

# Cleaning
clean <- function(data){
  temp <- data %>% 
    filter(!is.na(`SMHA Expenditures Per Capita`))%>%  
    
    #last rows are notes on the table, so we eliminate them
    
    select(-Footnotes)%>%
    transmute(State=Location, mh_exp_pc=`SMHA Expenditures Per Capita`)
  
  temp$mh_exp_pc <- as.numeric(gsub("\\$", "", temp$mh_exp_pc)) 
  
  #remove dollar symbol from  mh_exp_pc and transform it into numeric, 
  #since before it was character.
  
  return(temp)
}  

mh_exp_2004 <- transmute(clean(raw_data_2004), State, '2004' = mh_exp_pc)
mh_exp_2005 <- transmute(clean(raw_data_2005), State, '2005' = mh_exp_pc)
mh_exp_2006 <- transmute(clean(raw_data_2006), State, '2006' = mh_exp_pc)
mh_exp_2007 <- transmute(clean(raw_data_2007), State, '2007' = mh_exp_pc)
mh_exp_2008 <- transmute(clean(raw_data_2008), State, '2008' = mh_exp_pc)
mh_exp_2009 <- transmute(clean(raw_data_2009), State, '2009' = mh_exp_pc)
mh_exp_2010 <- transmute(clean(raw_data_2010), State, '2010' = mh_exp_pc)
mh_exp_2011 <- transmute(clean(raw_data_2011), State, '2011' = mh_exp_pc)
mh_exp_2012 <- transmute(clean(raw_data_2012), State, '2012' = mh_exp_pc)
mh_exp_2013 <- transmute(clean(raw_data_2013), State, '2013' = mh_exp_pc)

mh_exp<-mh_exp_2004%>%
  left_join(mh_exp_2005, by="State")%>%
  left_join(mh_exp_2006, by="State")%>%
  left_join(mh_exp_2007, by="State")%>%
  left_join(mh_exp_2008, by="State")%>%
  left_join(mh_exp_2009, by="State")%>%
  left_join(mh_exp_2010, by="State")%>%
  left_join(mh_exp_2011, by="State")%>%
  left_join(mh_exp_2012, by="State")%>%
  left_join(mh_exp_2013, by="State")%>%
  pivot_longer(c("2004","2005","2006","2007","2008","2009","2010","2011","2012","2013")
               ,names_to="year",values_to="mh_exp_pc") %>%
  arrange(year) %>% 
  transmute(State, year=as.numeric(year), mh_exp_pc)




# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #




# --------------------------------- ESTIMATED CRIMES -------------------------------- #

# Import
estimated_crimes_1979_2019 <- read_delim(
  here::here("data/estimated_crimes_1979_2019.csv"),";",
  escape_double = FALSE, trim_ws = TRUE) 

# Count for NA in each column
colSums(is.na(estimated_crimes_1979_2019))

# Cleaning
estimated_crimes <- estimated_crimes_1979_2019 %>%
  transmute(State=state_name, state_abbr, year=as.numeric(year), 
            population, homicide, violent_crime,
            rape_legacy, aggravated_assault)%>%
  
  mutate(across(State, ~replace_na(.x, "United States")), 
         across(state_abbr, ~replace_na(.x, "US"))) %>% 
  
  #Fill NA values with "United States" and its abbrevation "US"
  
  filter(year %in% c(2004:2013)) 

#filter years of interest in line with availability for other dataset


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #



# ------------------------------ GROSS DOMESTIC PRODUCT ----------------------------- #

GDP <- read_csv(here::here("data/GDP.csv"), skip = 4)  #import data

GDP_Cleaned <- GDP %>%
  mutate(State = GeoName) %>% 
  #change the name so that it's in line with the other datasets
  
  filter(Description == "Current-dollar GDP (millions of current dollars)") %>%
  #We care only about GDP, so we filter out other descriptions
  
  select(-c(GeoFips, LineCode, GeoName, Description))%>% 
  #we also select away some variables which are not of interest
  
  pivot_longer(c('1997','1998','1999','2000','2001','2002','2003','2004','2005',
                 '2006','2007','2008','2009','2010','2011','2012','2013','2014','2015',
                 '2016','2017','2018','2019'), names_to="year",
               values_to="Current_dollar_GDP_millions")%>% 
  
  #We increase number of observation of GDP for each state by adding a variable "year"
  mutate_at("year", as.numeric)%>%
  filter(year %in% c(2004:2013)) %>%
  #select year of interest in line with other dataset availability
  arrange(year)

# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #



# ----------------------------------- DEMOGRAPHICS ---------------------------------- #


st_est00int_race <- read_csv(here::here("data/st-est00int-race.csv")) #import data
st_est00int_agesex <- read_csv(here::here("data/st-est00int-agesex.csv"))
sc_est2019_alldata6 <- read_csv(here::here("data/sc-est2019-alldata6.csv"))

# Race
dem_2004_2010_race <- st_est00int_race %>%
  transmute(State=NAME, Region=fct_recode(as.factor(REGION),
                                           "US"="0",
                                           "NE"="1",
                                           "MW"="2",
                                           "S"="3",
                                           "W"="4"), 
            Race=as.factor(RACE), "2004"=POPESTIMATE2004,
            "2005"=POPESTIMATE2005, "2006"=POPESTIMATE2006, 
            "2007"=POPESTIMATE2007, "2008"=POPESTIMATE2008, 
            "2009"=POPESTIMATE2009, "2010"=POPESTIMATE2010) %>% 
  #rename variables
  
  mutate(Race = fct_recode(Race,
                           "Total" = "0",
                           "White" = "1",
                           "BlackAfricanAmerican" = "2",
                           "AmericanIndianAlaska" = "3",
                           "Asian" = "4",
                           "HawaiianPacificIslanders" = "5",
                           "Racesgreaterthan1" = "6")) %>% #rename levels 
  
  pivot_longer(c("2004","2005","2006","2007","2008","2009","2010"),
               names_to="year",values_to="Population") %>% 
  #increase number of observation of population for each state by adding a variable "year"
  
  pivot_wider(names_from = Race, values_from=Population) %>% 
  #increase number of variables, creating one for each race category
  
  transmute(State, year = as.numeric(year), White, BlackAfricanAmerican, Asian,
            Other_race=AmericanIndianAlaska + HawaiianPacificIslanders + Racesgreaterthan1)
  #Put together into 'Other' three Race categories.


# Age Sex
dem_2004_2010_agesex <- st_est00int_agesex %>%
  transmute(State=NAME, Region=fct_recode (as.factor(REGION),
                                                  "US"="0",
                                                  "NE"="1",
                                                  "MW"="2",
                                                  "S"="3",
                                                  "W"="4"), 
            Sex=as.factor(SEX), Age=AGE, 
            "2004"=POPESTIMATE2004,"2005"=POPESTIMATE2005, 
            "2006"=POPESTIMATE2006, "2007"=POPESTIMATE2007, 
            "2008"=POPESTIMATE2008, "2009"=POPESTIMATE2009, 
            "2010"=POPESTIMATE2010) %>%
  
  mutate(Sex = fct_recode(Sex,
                          "Total" = "0",
                          "Male" = "1",
                          "Female" = "2"))%>%
  pivot_longer(c("2004","2005","2006","2007","2008","2009","2010"), 
               names_to="year",values_to="Population") %>% 
  #increase number of observation of population for each state by adding a variable "year"
  
  pivot_wider(names_from = c(Sex,Age), values_from=Population) %>% 
  #increase number of variables, creating one for each sex category
  transmute(State, Region, year = as.numeric(year), population=Total_999, Male=Male_999,
            Female=Female_999, Age_0_17=rowSums(.[4:21]), 
            Age_18_24=rowSums(.[22:28]), Age_25_44=rowSums(.[29:48]),
            Age_45_64=rowSums(.[49:68]), Age_65_84=rowSums(.[69:88]),
            Age_over85=population-Age_0_17-Age_18_24-Age_25_44-Age_45_64-Age_65_84) 
            #create groups of age


dem_2004_2010<-dem_2004_2010_agesex %>%
  left_join(dem_2004_2010_race, by=c("State","year")) 
            
            
            
#2010_2019
# We divide the dataset in three parts: sex, age and race, 
# to be bale to tidy each part and then put everything back together

#sex
dem_2011_2013_sex <- sc_est2019_alldata6 %>%
  filter(ORIGIN == 0 )%>%
  group_by(NAME, SEX) %>%
  summarize('2011' = sum(POPESTIMATE2011),
            '2012' = sum(POPESTIMATE2012),
            '2013' = sum(POPESTIMATE2013)) %>%
  ungroup()%>%
  pivot_longer(c('2011','2012','2013'),names_to = 'year',values_to = 'pop' ) %>%
  transmute(State=NAME, year = as.numeric(year), pop, 
            SEX=fct_recode(as.factor(SEX), "population"="0", 
                           "Male"="1", "Female"="2"))%>%
  
  pivot_wider(names_from = SEX, values_from= pop)

#Race
dem_2011_2013_race <- sc_est2019_alldata6 %>%
  filter(ORIGIN == 0, SEX==0 )%>%
  group_by(NAME, RACE) %>%
  summarize('2011' = sum(POPESTIMATE2011),
            '2012' = sum(POPESTIMATE2012),
            '2013' = sum(POPESTIMATE2013)) %>%
  ungroup()%>%
  pivot_longer(c('2011','2012','2013'),names_to = 'year',values_to = 'pop' ) %>%
  transmute(State=NAME, year, pop, RACE=fct_recode(as.factor(RACE), 
                                                   "White" = "1",
                                                   "BlackAfricanAmerican" = "2",
                                                   "AmericanIndianAlaska" = "3",
                                                   "Asian" = "4",
                                                   "HawaiianPacificIslanders" = "5",
                                                   "Racesgreaterthan1" = "6"))%>%
  pivot_wider(names_from = RACE, values_from= pop)%>%
  transmute(State, year = as.numeric(year), White, BlackAfricanAmerican,
            Asian, Other_race=AmericanIndianAlaska + 
              HawaiianPacificIslanders + Racesgreaterthan1) 
#Put together into 'Other' three Race categories.

#Age
dem_2011_2013_age <- sc_est2019_alldata6 %>%
  filter(ORIGIN == 0, SEX==0 )%>%
  group_by(NAME, AGE) %>%
  summarize('2011' = sum(POPESTIMATE2011),
            '2012' = sum(POPESTIMATE2012),
            '2013' = sum(POPESTIMATE2013)) %>%
  ungroup()%>%
  pivot_longer(c('2011','2012','2013'),names_to = 'year',values_to = 'pop' ) %>%
  pivot_wider(names_from = AGE, values_from= pop)%>%
  transmute(State=NAME, year = as.numeric(year), Age_0_17=rowSums(.[3:20]), 
            Age_18_24=rowSums(.[21:27]), 
            Age_25_44=rowSums(.[28:47]), 
            Age_45_64=rowSums(.[48:67]), 
            Age_65_84=rowSums(.[68:87]),
            Age_over85=rowSums(.[88]))

#put together the three data sets with demographics of years 2011-2013:
dem_2011_2013 <- dem_2011_2013_sex %>%
  left_join(dem_2011_2013_age, by = c("State", "year")) %>%
  left_join(dem_2011_2013_race, by = c("State", "year"))
  
# In the dataset from 2004 to 2011 we don't have observations on US, so we create
# them by summing across the other states
dem_us_2011_2013 <- dem_2011_2013 %>%
  group_by(year)%>%
  summarize(State="United States", population=sum(population), 
         Male=sum(Male), Female=sum(Female), 
         Age_0_17=sum(Age_0_17), Age_18_24=sum(Age_18_24), 
         Age_25_44=sum(Age_25_44), Age_45_64=sum(Age_65_84), 
         Age_65_84=sum(Age_65_84), Age_over85=sum(Age_over85), 
         White=sum(White), BlackAfricanAmerican=sum(BlackAfricanAmerican), 
         Asian=sum(Asian), Other_race=sum(Other_race)) %>%
  select(State, year, everything())
#I add this to the dataset dem_2011_2013
dem_2011_2013 <- rbind(dem_2011_2013, dem_us_2011_2013)
  


# put together complete demographic data sets from the two years-ranges:
demographics<- merge(dem_2004_2010, dem_2011_2013, all.x = TRUE, all.y = TRUE) %>%
  fill(Region, .direction = "down") %>% 
  # We introduce region for the missing values 
  arrange(year) 
  


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #


# ---------------------------------- EDUCATION DATA --------------------------------- #

edu_percholder_25_44 <- read_excel(here::here("data/BSc_holder_25_44.xlsx"))
edu_per1000_18_24 <- read_excel(here::here("data/BCs_per1000_18_24_yrsold.xlsx"))


edu_percholder_old <- edu_percholder_25_44%>%
  mutate("2004"=NA)%>% #Add a NA column for 2004 since we have no data for it. 
  pivot_longer(c('2004','2005','2006','2007','2008','2009','2010','2011','2012',
                 '2013','2014','2015','2016','2017','2018'), 
               names_to="year", values_to="perc_bscholder_25_44")%>%
  
  transmute(State, year=as.numeric(year), perc_bscholder_25_44) %>%
  
  filter(year %in% c(2004:2013))%>%
  
  fill(perc_bscholder_25_44, .direction = "up") 
  # Fill perc_bscholder_25_44 for 2004 with values from 2005, it makes sense to us 
  # since we expect no big change from one year to another in the percentage 
  # of Bachelor's degree holders.


edu <- edu_per1000_18_24%>%
  pivot_longer(c('2000','2001','2002','2003','2004','2005','2006','2007','2008',
                 '2009','2010','2011','2012','2013','2014','2015','2016','2017','2018')
               , names_to="year", values_to="per1000_bscconferred_18_24")%>%
  
  transmute(State, year=as.numeric(year),
            perc_bscconferred_18_24=(per1000_bscconferred_18_24/1000)*100) %>% 
  # transformed the last variable from per 1000 to a per cent, to have it 
  # in line with the other variable once we join the two education datasets
  
  filter(year %in% c(2004:2013))%>%
  left_join(edu_percholder_old, by=c("State","year"))%>% 
  # Join with the previous education dataset to have a dataset on education 
  # with two variables, referring to two different age ranges.
  
  arrange(year) 

# in both, we filtered for years of interest and used pivot_longer to increase number 
# of observation of population for each state by adding a variable "year"



# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #



# ---------------------------------- TOTAL DATA SET --------------------------------- #
'%nin%' <- Negate('%in%')

project <-demographics%>%
  full_join(mh_exp, by=c("State","year"))%>%
  full_join(edu, by=c("State","year"))%>%
  full_join(GDP_Cleaned, by=c("State","year"))%>%
  full_join(estimated_crimes, by=c("State","year"))%>%
  filter(State %nin% c("New England", "Mideast", "Great Lakes",
                   "Plains", "Southeast", "Southwest", "Rocky Mountain",
                   "Far West", "Puerto Rico"))%>%
  mutate(population=population.x)%>%
  select(-c("population.x","population.y")) 

# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #




