demographics <- read_csv(here::here("data/sc-est2019-alldata6.csv")) #import data

dem_2011_2013_sex <- demographics %>%
  filter(ORIGIN == 0 )%>%
  group_by(NAME, SEX) %>%
  summarize('2011' = sum(POPESTIMATE2011),
            '2012' = sum(POPESTIMATE2012),
            '2013' = sum(POPESTIMATE2013)) %>%
  ungroup()%>%
  pivot_longer(c('2011','2012','2013'),names_to = 'year',values_to = 'pop' ) %>%
  transmute(State=NAME, year, pop, SEX=fct_recode(as.factor(SEX), "Total"="0", "Male"="1", "Female"="2"))%>%
  pivot_wider(names_from = SEX, values_from= pop)


dem_2011_2013_age <- demographics %>%
  filter(ORIGIN == 0)%>%
  group_by(NAME, AGE) %>%
  summarize('2011' = sum(POPESTIMATE2011),
            '2012' = sum(POPESTIMATE2012),
            '2013' = sum(POPESTIMATE2013)) %>%
  ungroup()
