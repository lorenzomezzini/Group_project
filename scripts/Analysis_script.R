# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #
#             in this file we present the modeling and analysis part                 #
# ----------------------------------------------------------------------------------- #
# ----------------------------------------------------------------------------------- #

# For this part you need package "pml" - it is already included in our setup

# Do it by declaring which are the index, so the individual and the time period
p_project <- project_1%>%
  mutate(criminality_minus_rape=homicide+aggravated_assault+violent_crime, total_criminality=homicide+aggravated_assault+violent_crime+rape_legacy)%>%
  filter(State!="United States")
#We create two additional variables: total criminality in per 1000 terms and tot.criminality less rape in per 1000 terms.
#We also filter out United States, since it's a total of the single states.

p_project<-pdata.frame(p_project, index=c("State","year"))
# Tell R that our data are a panel data frame.
# Do it by declaring which are the index, so the individual and the time period

# ---------------------------------Standard OLS------------------------------------- #

ols_tot <- lm(total_criminality ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population), data = p_project)

stargazer(ols_tot, type='text') #show results

coeftest(ols_tot, vcov(ols_tot, type="HC0", cluster="group"))  #show results considering cluster-robust s.e. - by group (State)


ols_nr <- lm(criminality_minus_rape ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population), data = p_project)

stargazer(ols_nr, type='text') #show results

coeftest(ols_nr, vcov(ols_tot, type="HC0", cluster="group"))  #show results considering cluster-robust s.e. - by group (State)

# We avoid doing it for each crime separately 
# since we don't consider standard OLS method to be the proper model with a panel data

# ----------------------------------Fixed Effect------------------------------------- #

# Homicide 
fe_hom <- plm(homicide ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
            White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
            Age_65_84+log(population), data = p_project, model="within")

stargazer(fe_hom, type="text") #show results

coeftest(fe_hom, vcov(fe_hom, type="sss", cluster="group")) #show results considering cluster-robust s.e. - by group (State)

# Rape
fe_rape <- plm(rape_legacy ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                 White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                 Age_65_84+log(population), data = p_project, model="within")

stargazer(fe_rape, type="text") #show results

coeftest(fe_rape, vcov(fe_rape, type="sss", cluster="group")) #show results considering cluster-robust s.e. - by group (State)

#Violent Crime
fe_vc <- plm(violent_crime ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population), data = p_project, model="within")

stargazer(fe_vc, type="text") #show results

coeftest(fe_vc, vcov(fe_vc, type="sss", cluster="group")) #show results considering cluster-robust s.e. - by group (State)

#Aggravated Assault
fe_aa <- plm(aggravated_assault ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population), data = p_project, model="within")

stargazer(fe_aa, type="text") #show results

coeftest(fe_aa, vcov(fe_aa, type="sss", cluster="group")) #show results considering cluster-robust s.e. - by group (State)

#Not Rape
fe_nr <- plm(criminality_minus_rape ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population), data = p_project, model="within")

stargazer(fe_nr, type="text") #show results

coeftest(fe_nr, vcov(fe_nr, type="sss", cluster="group")) #show results considering cluster-robust s.e. - by group (State)

#Total Criminality
fe_tot <- plm(total_criminality ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population), data = p_project, model="within")

stargazer(fe_tot, type="text") #show results

coeftest(fe_tot, vcov(fe_tot, type="sss", cluster="group")) #show results considering cluster-robust s.e. - by group (State)

# ---------------------------------Random Effect------------------------------------- #

# Homicide 
re_hom <- plm(homicide ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population) + Region, data = p_project, model="random")

stargazer(re_hom, type="text") #show results

# Rape
re_rape <- plm(rape_legacy ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                 White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                 Age_65_84+log(population) + Region, data = p_project, model="random")

stargazer(re_rape, type="text") #show results

#Violent Crime
re_vc <- plm(violent_crime ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population) + Region, data = p_project, model="random")

stargazer(re_vc, type="text") #show results

#Aggravated Assault
re_aa <- plm(aggravated_assault ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population)+Region, data = p_project, model="random")

stargazer(re_aa, type="text") #show results

#Not Rape
re_nr <- plm(criminality_minus_rape ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
               White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
               Age_65_84+log(population)+Region, data = p_project, model="random")

stargazer(re_nr, type="text") #show results

#Total Criminality
re_tot <- plm(total_criminality ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population)+Region, data = p_project, model="random")

stargazer(re_tot, type="text") #show results

# ---------------------------------Hausman test------------------------------------- #
# -----------------------------------FE vs RE--------------------------------------- #

# Homicide
phtest(fe_hom, re_hom)
# we should favor fixed effect 

# Rape
phtest(fe_rape, re_rape)
# we should favor fixed effect 

# Violent Crime
phtest(fe_vc, re_vc)
# we should favor fixed effect 

# Aggravated Assault
phtest(fe_aa, re_aa)
# we should favor fixed effect 

# Not Rape
phtest(fe_nr, re_nr)
# we should favor fixed effect 

# Total Criminality
phtest(fe_tot, re_tot)
# we should favor fixed effect 

#For every regression, Fixed Effect method appears more appropriate than Random Effect

# -------------------------------First Difference----------------------------------- #

fd_hom <- plm(homicide ~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
            White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
            Age_65_84+log(population), data = p_project, model="fd")

fd_rape <- plm(rape_legacy~ log(Current_dollar_GDP_millions)+log(mh_exp_pc)+perc_bscholder_25_44+
                White+BlackAfricanAmerican+Asian+Age_0_17+Age_18_24+Age_25_44+Age_45_64+
                Age_65_84+log(population), data = p_project, model="fd")
#First Difference method in panel data apllied to regressions with homicide and rape as dependent variable, although this
#is not the proper method for us - as we will explain in the report - analysis part.








