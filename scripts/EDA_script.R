# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
#            in this file are present all the graphical representations.              #
#                                       and EDA                                       #
# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #

# New dataset in relative terms:

project_1 <- project

# crimes in per thousands term 
project_1$homicide = project_1$homicide/project_1$population*1000
project_1$violent_crime = project_1$violent_crime/project_1$population*1000
project_1$aggravated_assault = project_1$aggravated_assault/project_1$population*1000
project_1$rape_legacy = project_1$rape_legacy/project_1$population*1000

# race in percentage
project_1$BlackAfricanAmerican = project_1$BlackAfricanAmerican/project_1$population
project_1$White = project_1$White/project_1$population
project_1$Asian = project_1$Asian/project_1$population
project_1$Other_race = project_1$Other_race/project_1$population

# Age in percentage
project_1$Age_0_17  = project_1$Age_0_17 /project_1$population
project_1$Age_18_24 = project_1$Age_18_24/project_1$population
project_1$Age_25_44  = project_1$Age_25_44 /project_1$population
project_1$Age_45_64  = project_1$Age_45_64 /project_1$population
project_1$Age_65_84  = project_1$Age_65_84 /project_1$population
project_1$Age_over85 = project_1$Age_over85 /project_1$population
#this is needed for the interactive map

# TIME SERIES

#TIME SERIES MH_EXP
#US and by region - Create a time series in R
mh_exp_ts <- project %>%
  group_by(Region, year)%>%
  summarise(median_mh_exp_pc=median(mh_exp_pc, na.rm = TRUE))%>%
  ungroup()%>%
  pivot_wider(values_from = median_mh_exp_pc, names_from=Region)
mh_exp_ts <- ts(mh_exp_ts[-1],start = 2004, end=2013)

#Plot the time series 
time_series_1 <- dygraph(mh_exp_ts,
                         main = "Mental Health Expenditure per capita for the US and by region",
                         width = 900, height = 500) %>% 
  dyAxis("y", label = "mh_exp_pc", independentTicks = TRUE) %>%
  dySeries("US", axis=('y'), color = "#B10026") %>%
  dySeries("NE", axis=('y'), color = "#FC4E2A") %>%
  dySeries("MW", axis=('y'), color = "#FEB24C") %>%
  dySeries("S", axis=('y'), color = "#FFEDA0") %>%
  dySeries("W", axis=('y'), color = "#E31A1C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01")) %>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))
# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #


# Compare ts for mh_exp, criminality and education in US 
#Homicides
# Create a time series in R
mh_exp_ts_2 <- project %>%
  filter(State=="United States")%>%
  select(year, mh_exp_pc, homicide)
mh_exp_ts_2 <- ts(mh_exp_ts_2[-1],start = 2004, end=2013)

# Plot the time series
time_series_2 <- dygraph(mh_exp_ts_2,
                         main = "Mental Health Expenditure per capita and Homicide Times Series",
                         width = 900, height = 500) %>% 
  dyAxis("y", label = "mh_exp_pc", independentTicks = TRUE) %>%
  dyAxis("y2", label = "homicide", independentTicks = TRUE) %>%
  dySeries("mh_exp_pc", axis=('y'), color = "#B10026") %>%
  dySeries("homicide", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01")) %>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))


#Rape
# Create a time series in R
mh_exp_ts_2_rape <- project %>%
  filter(State=="United States")%>%
  select(year, mh_exp_pc, rape_legacy)
mh_exp_ts_2_rape <- ts(mh_exp_ts_2_rape[-1],start = 2004, end=2013)

# Plot the time series
time_series_2_rape <- dygraph(mh_exp_ts_2_rape,
                              main = "Mental Health Expenditure per capita and Rape Times Series",
                         width = 900, height = 500) %>% 
  dyAxis("y", label = "mh_exp_pc", independentTicks = TRUE) %>%
  dyAxis("y2", label = "rape_legacy", independentTicks = TRUE) %>%
  dySeries("mh_exp_pc", axis=('y'), color = "#B10026") %>%
  dySeries("rape_legacy", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))

#Violent crime
# Create a time series in R
mh_exp_ts_2_violent <- project %>%
  filter(State=="United States")%>%
  select(year, mh_exp_pc, violent_crime)
mh_exp_ts_2_violent <- ts(mh_exp_ts_2_violent[-1],start = 2004, end=2013)

# Plot the time series
time_series_2_violent <- dygraph(mh_exp_ts_2_violent,
                                 main = "Mental Health Expenditure per capita and Violent Crime Times Series",
                              width = 900, height = 500) %>% 
  dyAxis("y", label = "mh_exp_pc", independentTicks = TRUE) %>%
  dyAxis("y2", label = "violent_crime", independentTicks = TRUE) %>%
  dySeries("mh_exp_pc", axis=('y'), color = "#B10026") %>%
  dySeries("violent_crime", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))

#Aggravated Assault
# Create a time series in R
mh_exp_ts_2_aa <- project %>%
  filter(State=="United States")%>%
  select(year, mh_exp_pc, aggravated_assault)
mh_exp_ts_2_aa <- ts(mh_exp_ts_2_aa[-1],start = 2004, end=2013)

# Plot the time series
time_series_2_aa <- dygraph(mh_exp_ts_2_aa,
                            main = "Mental Health Expenditure per capita and Aggravated Assault Times Series",
                                 width = 900, height = 500) %>% 
  dyAxis("y", label = "mh_exp_pc", independentTicks = TRUE) %>%
  dyAxis("y2", label = "aggravated_assault", independentTicks = TRUE) %>%
  dySeries("mh_exp_pc", axis=('y'), color = "#B10026") %>%
  dySeries("aggravated_assault", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))

# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #


# compare ts for mh_exp and education in US
# Create a time series in R
mh_exp_ts_3 <- project %>%
  filter(State=="United States")%>%
  select(year, mh_exp_pc, perc_bscholder_25_44)
mh_exp_ts_3 <- ts(mh_exp_ts_3[-1],start = 2004, end=2013)

# Plot the time series
time_series_3 <- dygraph(mh_exp_ts_3, 
                         main = "Mental Health Expenditure per capita for the US and Higher Education Level Time Series",
                         width = 900, height = 500) %>% 
  dyAxis("y", label = "mh_exp_pc", independentTicks = TRUE) %>%
  dyAxis("y2", label = "perc_bscholder_25_44", independentTicks = TRUE) %>%
  dySeries("mh_exp_pc", axis=('y'), color = "#B10026") %>%
  dySeries("perc_bscholder_25_44", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #


# Compare ts for criminality and education in US
# Homicide
# Create a time series in R
mh_exp_ts_4 <- project %>%
  filter(State=="United States")%>%
  select(year, homicide, perc_bscholder_25_44)
mh_exp_ts_4<- ts(mh_exp_ts_4[-1],start = 2004, end=2013)

# Plot the time series
time_series_4 <- dygraph(mh_exp_ts_4, main = "Criminality (Homicides) and Higher Education Level Time Series",
                         width = 900, height = 500) %>% 
  dyAxis("y", label = "homicide", independentTicks = TRUE) %>%
  dyAxis("y2", label = "perc_bscholder_25_44", independentTicks = TRUE) %>%
  dySeries("homicide", axis=('y'), color = "#B10026") %>%
  dySeries("perc_bscholder_25_44", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))


#Rape
# Create a time series in R
mh_exp_ts_4_rape <- project %>%
  filter(State=="United States")%>%
  select(year, rape_legacy, perc_bscholder_25_44)
mh_exp_ts_4_rape<- ts(mh_exp_ts_4_rape[-1],start = 2004, end=2013)

# Plot the time series
time_series_4_rape <- dygraph(mh_exp_ts_4_rape, main = "Criminality (Rape) and Higher Education Level Time Series", width = 900, height = 500) %>% 
  dyAxis("y", label = "rape_legacy", independentTicks = TRUE) %>%
  dyAxis("y2", label = "perc_bscholder_25_44", independentTicks = TRUE) %>%
  dySeries("rape_legacy", axis=('y'), color = "#B10026") %>%
  dySeries("perc_bscholder_25_44", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))

#Violent Crimes
# Create a time series in R
mh_exp_ts_4_violent <- project %>%
  filter(State=="United States")%>%
  select(year, violent_crime, perc_bscholder_25_44)
mh_exp_ts_4_violent<- ts(mh_exp_ts_4_violent[-1],start = 2004, end=2013)

# Plot the time series
time_series_4_violent<- dygraph(mh_exp_ts_4_violent, main = "Criminality (Violent Crime) and Higher Education Level Time Series", width = 900, height = 500) %>% 
  dyAxis("y", label = "violent_crime", independentTicks = TRUE) %>%
  dyAxis("y2", label = "perc_bscholder_25_44", independentTicks = TRUE) %>%
  dySeries("violent_crime", axis=('y'), color = "#B10026") %>%
  dySeries("perc_bscholder_25_44", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))

#Aggravated Assault 
# Create a time series in R
mh_exp_ts_4_aa <- project %>%
  filter(State=="United States")%>%
  select(year, aggravated_assault, perc_bscholder_25_44)
mh_exp_ts_4_aa <- ts(mh_exp_ts_4_aa[-1],start = 2004, end=2013)

# Plot the time series
time_series_4_aa <- dygraph(mh_exp_ts_4_aa, main = "Criminality (Aggravated Assault) and Higher Education Level Time Series", width = 900, height = 500) %>% 
  dyAxis("y", label = "aggravated_assault", independentTicks = TRUE) %>%
  dyAxis("y2", label = "perc_bscholder_25_44", independentTicks = TRUE) %>%
  dySeries("aggravated_assault", axis=('y'), color = "#B10026") %>%
  dySeries("perc_bscholder_25_44", axis=('y2'), color = "#FEB24C") %>%
  dyRangeSelector(dateWindow = c("2004-01-01", "2013-01-01"))%>%
  dyHighlight(highlightSeriesOpts = list(strokeWidth = 3))



# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
#BOXPLOTS


# Boxplot 1
mh_exp_bp <- project %>%
  filter(State != "United States")

mh_exp_boxplot <- ggplot(na.omit(mh_exp_bp), aes(x=fct_reorder(State,mh_exp_pc,median),y=mh_exp_pc, width=800, fill=Region)) +
  geom_boxplot() +
  coord_flip() +
  facet_grid(Region ~ ., scale="free_y") +
  labs(y="mh_exp per capita", x="States by Region", title= "Mental Health Expenditure Variablity by State")+ 
  theme(axis.ticks.y = element_blank(), axis.title.y = element_blank())+
  scale_fill_brewer(palette="YlOrRd") +
  theme_gray() +
  theme(legend.position="none")


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
# Boxplot 2 

mh_exp_boxplot2 <-ggplot(na.omit(project), aes(x=fct_reorder(Region,mh_exp_pc,median),y=mh_exp_pc, fill=Region)) + 
  geom_boxplot() +
  coord_flip()+
  labs(y="mh_exp per capita", x="Regions and US", title= "Mental Health Expenditure Variability by Region") +
  scale_fill_brewer(palette="YlOrRd") +
  theme_gray() +
  theme(legend.position="none")


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
# SCATTER PLOTS

# Subset project dataset and adjusting some values
mh_exp_p <- project %>%
  filter(State %nin% c("United States", "District of Columbia"))%>%
  pivot_longer(c("homicide","violent_crime","rape_legacy","aggravated_assault"),names_to="crimes", values_to="criminality")%>%
  mutate(criminality_p1000=criminality/population*1000, crimes=as.factor(crimes))
  #get a longer data-set through creation of variable "crimes" and "criminality_p1000"

# criminality and mental health expenditure 
mh_exp_plot <- ggplot(na.omit(mh_exp_p), aes(x=log10(mh_exp_pc),y=log10(criminality_p1000))) + 
  geom_point(aes(color=Region))+
  geom_smooth(method="lm", se=TRUE, fullrange=FALSE, color="#B10026", fill="#FEB24C")+
  labs(y="log - criminality per 1000", x="log - mh_exp per capita", title= "Mental Health Expenditure vs Criminality")+
  facet_wrap(crimes~ ., scale="free_y") +
  scale_color_brewer(palette="YlOrRd") + 
  theme_gray() 


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #


# mental health expenditure and education (without Distric of Columbia)
mh_exp_plot2 <- ggplot(na.omit(project%>%filter(State %nin% c("United States", "District of Columbia"))),aes(x=perc_bscholder_25_44, y=log10(mh_exp_pc), color=Region)) + 
  geom_point() +
  geom_smooth(method="lm", se=TRUE, 
              fullrange=FALSE, color="#B10026", fill="#FEB24C")+
  labs(y="mh_exp per capita", x="education", title= "Mental health vs Education")+
  scale_color_brewer(palette="YlOrRd")  + 
  theme_gray() 


# mental health expenditure and education (with Distric of Columbia)
mh_exp_plot2_dc <- ggplot(na.omit(project%>%filter(State %nin% c("United States"))),aes(x=perc_bscholder_25_44, y=log10(mh_exp_pc), color=Region)) + 
  geom_point() +
  geom_smooth(method="lm", se=TRUE, 
              fullrange=FALSE, color="#B10026", fill="#FEB24C")+
  labs(y="mh_exp per capita", x="education", title= "Mental health vs Education - With District of columbia")+
  scale_color_brewer(palette="YlOrRd") +
  theme_gray()


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #


# Education and criminality
mh_exp_plot3 <- ggplot(na.omit(mh_exp_p),aes(x=perc_bscholder_25_44, y=log10(criminality_p1000), color=log10(Current_dollar_GDP_millions))) + 
  geom_point() +
  scale_color_gradient(high = "#FFFFCC", low = "#B10026") +
  geom_smooth(method="lm", se=TRUE, 
              fullrange=FALSE, color="#B10026", fill="#FEB24C")+
  labs(y="log - criminality per 1000", x="Percentage of Bachelor's degree holder (25-44 yrs old)", title= "Criminality vs Education") +
  facet_wrap(crimes ~ ., scale="free_y")+
  theme_gray() 


# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #

# GDP and criminality
mh_exp_plot4 <- ggplot(na.omit(mh_exp_p),aes(x=log10(Current_dollar_GDP_millions), y=log10(criminality_p1000), color=log10(mh_exp_pc))) + 
  geom_point() +
  scale_color_gradient(high = "#FFFFCC", low = "#B10026")+
  geom_smooth(method="lm", se=TRUE, 
              fullrange=FALSE, color="#B10026", fill="#FEB24C")+
  labs(y="log - criminality per 1000", x="Current GDP (millions)", title= "GDP vs Criminality")+
  facet_wrap(crimes ~ ., scale="free_y") + 
  theme_gray() 

# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
# BARPLOTS


#BARPLOT TO BETTER UNDERSTAND THE COMPOSITION OF THE POPULATION
#RACE
#Create a dataset such that we have percentage of population in a region which is in a certain race group
demodata_bar_race <- project %>%
  select(State, year, Region, population, White, BlackAfricanAmerican, Asian, Other_race) %>%
  pivot_longer(c("White","BlackAfricanAmerican", "Asian", "Other_race"), names_to="Race", values_to="pop_byrace") %>%
  group_by(Region, Race) %>%
  summarise(factor = median(pop_byrace)/median(population) ) %>%
  ungroup() 

# plot 
demo_bar <- ggplot(na.omit(demodata_bar_race), aes(x=Region, y=factor, fill=Race)) + 
  geom_bar(stat="identity", position=position_dodge()) +
  xlab("Region") + ylab("Percentage of Population") + # Set axis labels
  ggtitle("Race Composition of the population") +
  scale_fill_brewer(palette="YlOrRd") +
  theme_gray()
ggplotly(demo_bar)


#AGE  
#Create a dataset such that we have percentage of population in a region which is in a certain age-range
demodata_bar_age <- project %>%
  select(State, year, Region, population, Age_0_17, Age_18_24, Age_25_44, Age_45_64, Age_65_84, Age_over85) %>%
  pivot_longer(c("Age_0_17", "Age_18_24", "Age_25_44", "Age_45_64", "Age_65_84", "Age_over85"), names_to="age", values_to="pop_byage")%>%
  group_by(Region, age) %>%
  summarise(factor_age = median(pop_byage)/median(population) ) %>%
  ungroup()

#plot
demo_bar_2 <- ggplot(na.omit(demodata_bar_age), aes(x=age, y=factor_age, fill=Region)) + 
  geom_bar(stat="identity", position=position_dodge()) +
  xlab("Region") + ylab("Percentage of Population") + # Set axis labels
  ggtitle("Age Composition of the population") +
  scale_fill_brewer(palette="YlOrRd") +
  theme_gray()
ggplotly(demo_bar_2)


#EDUCATION
#Create a dataset such that we have percentage of population in a region which is in a certain age-range
demodata_bar_edu <- project %>%
  select(State, year, Region, population, perc_bscholder_25_44) %>%
  group_by(Region) %>%
  summarise(factor_edu = median(perc_bscholder_25_44) ) %>%
  ungroup()

#plot
demo_bar_4 <- ggplot(na.omit(demodata_bar_edu), aes(x=Region, y=factor_edu)) + 
  geom_bar(stat="identity", position=position_dodge(), aes(fill=Region))+
  xlab("Region") + ylab("Percentage of Population") + # Set axis labels
  ggtitle("Education in US") +
  scale_fill_brewer(palette="YlOrRd") +
  theme_gray()
ggplotly(demo_bar_4)

# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #


#CRIMINALITY
#Create a dataset such that we have criminality per 1000 inhabitants in each region
demodata_bar_crimes <- project %>%
  filter(State %nin% c("United States"))%>%
  pivot_longer(c("homicide","violent_crime","rape_legacy","aggravated_assault"), names_to="crimes", values_to="criminality")%>%
  group_by(Region, crimes) %>%
  mutate(criminality_p1000=median(criminality)/median(population)*1000, crimes=as.factor(crimes))

#plot
demo_bar_3 <- ggplot(na.omit(demodata_bar_crimes), aes(x=Region, y=criminality_p1000, fill=crimes)) + 
  geom_bar(stat="identity", position=position_dodge()) +
  xlab("Region") + ylab("Criminality per 1000") + # Set axis labels
  ggtitle("Criminality in US, where is it more common?") +
  scale_fill_brewer(palette="YlOrRd") +
  theme_gray()
ggplotly(demo_bar_3)

# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
# Boxplot 3 - Education

mh_exp_boxplot3 <-ggplot(na.omit(project), aes(x=fct_reorder(Region,perc_bscholder_25_44,median),y=perc_bscholder_25_44, fill=Region)) + 
  geom_boxplot() +
  coord_flip()+
  labs(y="%BSc holder between 25-44 years old", x="Regions and US", title= "Higher Education Variability by Region")+
  scale_fill_brewer(palette="YlOrRd") +
  theme_gray() +
  theme(legend.position="none")
mh_exp_boxplot3







