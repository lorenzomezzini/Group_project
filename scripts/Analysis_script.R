# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
#             in this file we present the modeling and analysis part                 #
# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #

# For this part you need package "pml" - it is already included in our setup
# We start by telling R that our data are a panel data frame.
# Do it by declaring which are the index, so the individual and the time period
p_project <- project_1%>%
  mutate(criminality_minus_rape=homicide+aggravated_assault+violent_crime, total_criminality=homicide+aggravated_assault+violent_crime+rape_legacy)

p_project<-pdata.frame(p_project, index=c("State","year"))

# ----------------------------------Fixed Effect------------------------------------- #

# Homicide 
fe_hom <- plm(homicide ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
            White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
            Age_65_84+log(population), data = p_project, model="within")

stargazer(fe_hom, type="text")
#we can look also at results clustering standard errors by group (State)
coeftest(fe_hom, vcov(fe_hom, type="HC0", cluster="group"))

# Rape
fe_rape <- plm(rape_legacy ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                 White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                 Age_65_84+log(population), data = p_project, model="within")

coeftest(fe_rape, vcov(fe_rape, type="HC0", cluster="group"))

#Violent Crime
fe_vc <- plm(violent_crime ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population), data = p_project, model="within")
#we can look also at results clustering standard errors by group (State)
coeftest(fe_vc, vcov(fe_vc, type="HC0", cluster="group"))

#Aggravated Assault
fe_aa <- plm(aggravated_assault ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population), data = p_project, model="within")
#we can look also at results clustering standard errors by group (State)
coeftest(fe_aa, vcov(fe_aa, type="HC0", cluster="group"))

#Not Rape
fe_nr <- plm(criminality_minus_rape ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population), data = p_project, model="within")
stargazer(fe_nr, type="text")
coeftest(fe_nr, vcov(fe_nr, type="HC0", cluster="group"))

#Total Criminality
fe_tot <- plm(total_criminality ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population), data = p_project, model="within")
stargazer(fe_tot, type="text")
coeftest(fe_tot, vcov(fe_tot, type="HC0", cluster="group"))

# ---------------------------------Random Effect------------------------------------- #

re_hom <- plm(homicide ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
            White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
            Age_65_84+log(population) + Region, data = p_project, model="random")

re_vc <- plm(violent_crime ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
            White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
            Age_65_84+log(population) + Region, data = p_project, model="random")

# ---------------------------------Hausman test------------------------------------- #

phtest(fe_hom, re_hom)
# we should favor fixed effect 

# -------------------------------First Difference----------------------------------- #

fd_hom <- plm(homicide ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
            White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
            Age_65_84+log(population), data = p_project, model="fd")

fd_rape <- plm(rape_legacy~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population), data = p_project, model="fd")


# ---------------------------------Standard OLS------------------------------------- #

ols_hom <- lm(homicide ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
            White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
            Age_65_84+log(population), data = project_1)

ols_tot <- lm(total_criminality ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population), data = p_project)

coeftest(ols_tot, vcov(ols_tot, type="HC0", cluster="group"))
stargazer(ols_tot, type='text')


ols_nr <- lm(criminality_minus_rape ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population), data = p_project)
stargazer(ols_nr, type='text')




