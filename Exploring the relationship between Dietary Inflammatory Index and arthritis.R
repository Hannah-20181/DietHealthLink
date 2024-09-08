# NHanes 2003-2018
#Screening out those diagnosed with arthritis and those not diagnosed with arthritis
arthritis2003_2004_a<-read_xpt("MCQ_C (1).XPT")
arthritis2003_2004_a<-arthritis2003_2004_a %>%
  select(SEQN,MCQ160A) #MCQ160A means "Doctor ever said you had arthritis"

# Filtering participants with confirmed arthritis and those without confirmed arthritis
arthritis2003_2004_a<- arthritis2003_2004_a %>%
  filter(MCQ160A=="1"|MCQ160A=="2") #MCQ160A=="1" means "Yes";MCQ160A=="2" means "No"
arthritis2003_2004_a

arthritis2005_2006<-read_xpt("MCQ_D (1).XPT")
arthritis2005_2006<-arthritis2005_2006 %>%
  select(SEQN,MCQ160A)
arthritis2005_2006<-arthritis2005_2006 %>%
  filter(MCQ160A=="1"|MCQ160A=="2")
arthritis2005_2006<-na.omit(arthritis2005_2006)
arthritis2005_2006

arthritis2007_2008<-read_xpt("MCQ_E (1).XPT")
arthritis2007_2008<-arthritis2007_2008 %>%
  select(SEQN,MCQ160A)
arthritis2007_2008<-arthritis2007_2008 %>%
  filter(MCQ160A=="1"|MCQ160A=="2")
arthritis2007_2008<-na.omit(arthritis2007_2008)
arthritis2007_2008

arthritis2009_2010<-read_xpt("MCQ_F (1).XPT")
arthritis2009_2010<-arthritis2009_2010 %>%
  select(SEQN,MCQ160A)
arthritis2009_2010<-arthritis2009_2010%>%
  filter(MCQ160A=="1"|MCQ160A=="2")
arthritis2009_2010

arthritis2011_2012<-read_xpt("MCQ_G (1).XPT")
arthritis2011_2012<-arthritis2011_2012 %>%
  select(SEQN,MCQ160A)
arthritis2011_2012<-arthritis2011_2012%>%
  filter(MCQ160A=="1"|MCQ160A=="2")
arthritis2011_2012

arthritis2013_2014<-read_xpt("MCQ_H (1).XPT")
arthritis2013_2014<-arthritis2013_2014 %>%
  select(SEQN,MCQ160A)
arthritis2013_2014<-arthritis2013_2014%>%
  filter(MCQ160A=="1"|MCQ160A=="2")
arthritis2013_2014

arthritis2015_2016<-read_xpt("MCQ_I (1).XPT")
arthritis2015_2016<-arthritis2015_2016 %>%
  select(SEQN,MCQ160A)
arthritis2015_2016<-arthritis2015_2016%>%
  filter(MCQ160A=="1"|MCQ160A=="2")
arthritis2015_2016

arthritis2017_2018<-read_xpt("McQ_J (1).XPT")
arthritis2017_2018<-arthritis2017_2018 %>%
  select(SEQN,MCQ160A)
arthritis2017_2018<-arthritis2017_2018%>%
  filter(MCQ160A=="1"|MCQ160A=="2")
arthritis2017_2018
#Combination
arthritis2003_2018<-rbind(arthritis2003_2004_a,arthritis2005_2006,arthritis2007_2008,arthritis2009_2010,arthritis2011_2012,
                          arthritis2013_2014,arthritis2015_2016,arthritis2017_2018)
colnames(arthritis2003_2018)[colnames(arthritis2003_2018) == "MCQ160A"] <- "arthritis"
arthritis2003_2018

#Age and gender
demo_2003_2004<-read_xpt("DEMO_C (3).XPT")
demo_2003_2004<-demo_2003_2004 %>% select(SEQN,
                                RIDAGEYR,#Age
                                RIAGENDR) #Gender
demo_2003_2004

demo_2005_2006<-read_xpt("DEMO_D (4).XPT")
demo_2005_2006<-demo_2005_2006 %>% select(SEQN,
                                          RIDAGEYR,
                                          RIAGENDR)
demo_2005_2006

demo_2007_2008<-read_xpt("DEMO_E (2).XPT")
demo_2007_2008<-demo_2007_2008 %>% select(SEQN,
                                          RIDAGEYR,
                                          RIAGENDR)
demo_2007_2008

demo_2009_2010<-read_xpt("DEMO_F (1).XPT")
demo_2009_2010<-demo_2009_2010 %>% select(SEQN,
                                          RIDAGEYR,
                                          RIAGENDR)
demo_2009_2010

demo_2011_2012<-read_xpt("DEMO_G (1).XPT")
demo_2011_2012<-demo_2011_2012 %>% select(SEQN,
                                          RIDAGEYR,
                                          RIAGENDR)
demo_2011_2012

demo2013_2014<-read_xpt("DEMO_H (1).XPT")
demo2013_2014 <- demo2013_2014 %>% 
  select(SEQN, RIDAGEYR, RIAGENDR)
demo2013_2014 

demo2015_2016<-read_xpt("DEMO_I (2).XPT")
demo2015_2016 <- demo2015_2016 %>% 
  select(SEQN, RIDAGEYR, RIAGENDR)
demo2015_2016 

demo2017_2018<-read_xpt("DEMO_J (2).XPT")
demo2017_2018 <- demo2017_2018 %>% 
  select(SEQN, RIDAGEYR, RIAGENDR)
demo2017_2018 

demo2003_2018<-rbind(demo_2003_2004,demo_2005_2006,demo_2007_2008,
                     demo_2009_2010,demo_2011_2012,demo2013_2014,
                     demo2015_2016,demo2017_2018)
demo2003_2018<-na.omit(demo2003_2018)
demo2003_2018


#2003-2018 BMI
bmi2003_2004<-read_xpt("BMX_C.XPT")
bmi2003_2004<-bmi2003_2004 %>%
  select(SEQN,BMXBMI)
bmi2003_2004

bmi2005_2006<-read_xpt("BMX_D.XPT")
bmi2005_2006<-bmi2005_2006 %>%
  select(SEQN,BMXBMI)
bmi2005_2006

bmi2007_2008<-read_xpt("BMX_E.XPT")
bmi2007_2008<-bmi2007_2008 %>%
  select(SEQN,BMXBMI)
bmi2007_2008

bmi2009_2010<-read_xpt("BMX_F.XPT")
bmi2009_2010<-bmi2009_2010 %>%
  select(SEQN,BMXBMI)
bmi2009_2010

bmi2011_2012<-read_xpt("BMX_G.XPT")
bmi2011_2012<-bmi2011_2012 %>%
  select(SEQN,BMXBMI)
bmi2011_2012

bmi2013_2014<-read_xpt("BMX_H.XPT")
bmi2013_2014<-bmi2013_2014 %>%
  select(SEQN,BMXBMI)
bmi2013_2014

bmi2015_2016<-read_xpt("BMX_I.XPT")
bmi2015_2016<-bmi2015_2016 %>%
  select(SEQN,BMXBMI)
bmi2015_2016

bmi2017_2018<-read_xpt("BMX_J.XPT")
bmi2017_2018<-bmi2017_2018 %>%
  select(SEQN,BMXBMI)
bmi2017_2018

bmi2003_2018<-rbind(bmi2003_2004,bmi2005_2006,bmi2007_2008,bmi2009_2010,
                    bmi2011_2012,bmi2013_2014,bmi2015_2016,bmi2017_2018)
bmi2003_2018

# People who did not have diabetes from 2003 to 2018 
#were screened to exclude the influence of diabetes on arthritis.
diq2003_2004<-read_xpt("DIQ_C.XPT")
diq2003_2004<-diq2003_2004 %>%
  select(SEQN,DIQ010) #DIQ010 means "Doctor told you have diabetes"
diq2003_2004<-diq2003_2004 %>%
  filter(DIQ010==2) #DIQ010==2 means "No"
diq2003_2004

diq2005_2006<-read_xpt("DIQ_D.XPT")
diq2005_2006<-diq2005_2006 %>%
  select(SEQN,DIQ010)
diq2005_2006<-diq2005_2006 %>%
  filter(DIQ010==2)
diq2005_2006

diq2007_2008<-read_xpt("DIQ_E.XPT")
diq2007_2008<-diq2007_2008 %>%
  select(SEQN,DIQ010)
diq2007_2008<-diq2007_2008 %>%
  filter(DIQ010==2)
diq2007_2008

diq2009_2010<-read_xpt("DIQ_F.XPT")
diq2009_2010<-diq2009_2010 %>%
  select(SEQN,DIQ010)
diq2009_2010<-diq2009_2010 %>%
  filter(DIQ010==2)
diq2009_2010

diq2011_2012<-read_xpt("DIQ_G.XPT")
diq2011_2012<-diq2011_2012 %>%
  select(SEQN,DIQ010)
diq2011_2012<-diq2011_2012 %>%
  filter(DIQ010==2)
diq2011_2012

diq2013_2014<-read_xpt("DIQ_H.XPT")
diq2013_2014<-diq2013_2014 %>%
  select(SEQN,DIQ010)
diq2013_2014<-diq2013_2014 %>%
  filter(DIQ010==2)
diq2013_2014

diq2015_2016<-read_xpt("DIQ_I.XPT")
diq2015_2016<-diq2015_2016 %>%
  select(SEQN,DIQ010)
diq2015_2016<-diq2015_2016 %>%
  filter(DIQ010==2)
diq2015_2016

diq2017_2018<-read_xpt("DIQ_J.XPT")
diq2017_2018<-diq2017_2018 %>%
  select(SEQN,DIQ010)
diq2017_2018<-diq2017_2018 %>%
  filter(DIQ010==2)
diq2017_2018

diq2003_2018<-rbind(diq2003_2004,diq2005_2006,diq2007_2008,diq2009_2010,
                    diq2011_2012,diq2013_2014,diq2015_2016,diq2017_2018)
diq2003_2018
colnames(diq2003_2018)[colnames(diq2003_2018) == "DIQ010"] <- "diabetes"
diq2003_2018

#People who did not have hypertension from 2003 to 2018 
#were screened to exclude the influence of hypertension on arthritis
hyp2003_2004<-read_xpt("BPQ_C.XPT")
hyp2003_2004<-hyp2003_2004 %>%
  select(SEQN,BPQ020) #BPQ 020 means "Ever told you had high blood pressure"
hyp2003_2004<-hyp2003_2004 %>%
  filter(BPQ020=="2") #BPQ020=="2" means "No"
hyp2003_2004

hyp2005_2006<-read_xpt("BPQ_D.XPT")
hyp2005_2006<-hyp2005_2006 %>%
  select(SEQN,BPQ020)
hyp2005_2006<-hyp2005_2006 %>%
  filter(BPQ020=="2")
hyp2005_2006

hyp2007_2008<-read_xpt("BPQ_E.XPT")
hyp2007_2008<-hyp2007_2008 %>%
  select(SEQN,BPQ020)
hyp2007_2008<-hyp2007_2008 %>%
  filter(BPQ020=="2")
hyp2007_2008

hyp2007_2008<-read_xpt("BPQ_E.XPT")
hyp2007_2008<-hyp2007_2008 %>%
  select(SEQN,BPQ020)
hyp2007_2008<-hyp2007_2008 %>%
  filter(BPQ020=="2")
hyp2007_2008

hyp2009_2010<-read_xpt("BPQ_F.XPT")
hyp2009_2010<-hyp2009_2010 %>%
  select(SEQN,BPQ020)
hyp2009_2010<-hyp2009_2010 %>%
  filter(BPQ020=="2")
hyp2009_2010

hyp2011_2012<-read_xpt("BPQ_G.XPT")
hyp2011_2012<-hyp2011_2012 %>%
  select(SEQN,BPQ020)
hyp2011_2012<-hyp2011_2012 %>%
  filter(BPQ020=="2")
hyp2011_2012

hyp2013_2014<-read_xpt("BPQ_H.XPT")
hyp2013_2014<-hyp2013_2014 %>%
  select(SEQN,BPQ020)
hyp2013_2014<-hyp2013_2014 %>%
  filter(BPQ020=="2")
hyp2013_2014

hyp2015_2016<-read_xpt("BPQ_I.XPT")
hyp2015_2016<-hyp2015_2016 %>%
  select(SEQN,BPQ020)
hyp2015_2016<-hyp2015_2016 %>%
  filter(BPQ020=="2")
hyp2015_2016

hyp2017_2018<-read_xpt("BPQ_J.XPT")
hyp2017_2018<-hyp2017_2018 %>%
  select(SEQN,BPQ020)
hyp2017_2018<-hyp2017_2018 %>%
  filter(BPQ020=="2")
hyp2017_2018

hyp2003_2018<-rbind(hyp2003_2004,hyp2005_2006,hyp2007_2008,hyp2009_2010,
                    hyp2011_2012,hyp2013_2014,hyp2015_2016,hyp2017_2018)
colnames(hyp2003_2018)[colnames(hyp2003_2018) == "BPQ020"] <- "hypertension"
hyp2003_2018

#People who did not pregnant from 2003 to 2018 
#were screened to exclude the influence of pregnant on arthritis.
pregnant2003_2004<-read_xpt("RHQ_C (1).XPT")
pregnant2003_2004<-pregnant2003_2004 %>%
  select(SEQN,RHD143)
pregnant2003_2004<-pregnant2003_2004 %>%
  filter(RHD143=="2")
pregnant2003_2004

pregnant2005_2006<-read_xpt("RHQ_D (1).XPT")
pregnant2005_2006<-pregnant2005_2006 %>%
  select(SEQN,RHD143)
pregnant2005_2006<-pregnant2005_2006 %>%
  filter(RHD143=="2")
pregnant2005_2006

pregnant2007_2008<-read_xpt("RHQ_E (1).XPT")
pregnant2007_2008<-pregnant2007_2008 %>%
  select(SEQN,RHD143)
pregnant2007_2008<-pregnant2007_2008 %>%
  filter(RHD143=="2")
pregnant2007_2008

pregnant2009_2010<-read_xpt("RHQ_F (1).XPT")
pregnant2009_2010<-pregnant2009_2010 %>%
  select(SEQN,RHD143)
pregnant2009_2010<-pregnant2009_2010 %>%
  filter(RHD143=="2")
pregnant2009_2010

pregnant2011_2012<-read_xpt("RHQ_G (1).XPT")
pregnant2011_2012<-pregnant2011_2012 %>%
  select(SEQN,RHD143)
pregnant2011_2012<-pregnant2011_2012 %>%
  filter(RHD143=="2")
pregnant2011_2012

pregnant2013_2014<-read_xpt("RHQ_H (1).XPT")
pregnant2013_2014<-pregnant2013_2014 %>%
  select(SEQN,RHD143)
pregnant2013_2014<-pregnant2013_2014 %>%
  filter(RHD143=="2")
pregnant2013_2014

pregnant2015_2016<-read_xpt("RHQ_I (1).XPT")
pregnant2015_2016<-pregnant2015_2016 %>%
  select(SEQN,RHD143)
pregnant2015_2016<-pregnant2015_2016 %>%
  filter(RHD143=="2")
pregnant2015_2016

pregnant2017_2018<-read_xpt("RHQ_J (1).XPT")
pregnant2017_2018<-pregnant2017_2018 %>%
  select(SEQN,RHD143)
pregnant2017_2018<-pregnant2017_2018 %>%
  filter(RHD143=="2")
pregnant2017_2018

pregnant2003_2018<-rbind(pregnant2003_2004,pregnant2005_2006,pregnant2007_2008,pregnant2009_2010,
                         pregnant2011_2012,pregnant2013_2014,pregnant2015_2016,pregnant2017_2018)
pregnant2003_2018
colnames(pregnant2003_2018)[colnames(pregnant2003_2018) == "RHD143"] <- "pregnant"
pregnant2003_2018

#combination Arthritis patients,age,gender,BMI,not suffering from diabetes, 
#not suffering from hypertension, not pregnant from 2003-2018
merge_data<-merge(arthritis2003_2018,demo2003_2018,by.x='SEQN',by.y='SEQN',all=TRUE)
merge_data<-merge(merge_data,bmi2003_2018,by.x='SEQN',by.y='SEQN',all=TRUE)
merge_data<-merge(merge_data,diq2003_2018,by.x='SEQN',by.y='SEQN',all=TRUE)
merge_data<-merge(merge_data,hyp2003_2018,by.x='SEQN',by.y='SEQN',all=TRUE)
merge_data<-merge(merge_data,pregnant2003_2018,by.x='SEQN',by.y='SEQN',all=TRUE)
merge_data


#calculation DII
install.packages("devtools")  
devtools::install_github("jamesjiadazhan/dietaryindex")
library(dietaryindex)  
library(haven)
#2017-2018的DII
DEMO_PATH_10= read_xpt(file ='DEMO_J (2).XPT')  
FPED_PATH_10 = read_sas('fped_dr1tot_1718.sas7bdat')#第一天数据 
NUTRIENT_PATH_10=read_xpt('DR1TOT_J (1).XPT')
p<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_10,NUTRIENT_PATH = NUTRIENT_PATH_10,
                   DEMO_PATH=DEMO_PATH_10)
p
Q<-p[,c("SEQN","DII_ALL")]
Q
#2015-2016
DEMO_PATH_9=read_xpt(file='DEMO_I (2).XPT')
FPED_PATH_9=read_sas('fped_dr1tot_1516.sas7bdat')
NUTRIENT_PATH_9=read_xpt('DR1TOT_I (1).XPT')
N<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_9,NUTRIENT_PATH = NUTRIENT_PATH_9,
                   DEMO_PATH=DEMO_PATH_9)
o<-N[,c("SEQN","DII_ALL")]
o
#2013-2014
DEMO_PATH_8=read_xpt(file='DEMO_H (1).XPT')
FPED_PATH_8=read_sas('fped_dr1tot_1314.sas7bdat')
NUTRIENT_PATH_8=read_xpt('DR1TOT_H (1).XPT')
L<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_8,NUTRIENT_PATH = NUTRIENT_PATH_8,
                   DEMO_PATH=DEMO_PATH_8)
M<-L[,c("SEQN","DII_ALL")]
M
#2011-2012
DEMO_PATH_7=read_xpt(file='DEMO_G (1).XPT')
FPED_PATH_7=read_sas('fped_dr1tot_1112.sas7bdat')
NUTRIENT_PATH_7=read_xpt('DR1TOT_G (1).XPT')
J<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_7,NUTRIENT_PATH = NUTRIENT_PATH_7,
                   DEMO_PATH=DEMO_PATH_7)
k<-J[,c("SEQN","DII_ALL")]
k

#2009-2010
DEMO_PATH_6=read_xpt(file='DEMO_F (1).XPT')
FPED_PATH_6=read_sas('fped_dr1tot_0910.sas7bdat')
NUTRIENT_PATH_6=read_xpt('DR1TOT_F (1).XPT')
h<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_6,NUTRIENT_PATH = NUTRIENT_PATH_6,
                   DEMO_PATH=DEMO_PATH_6)
I<-h[,c("SEQN","DII_ALL")]
I

#2007-2008
DEMO_PATH_5=read_xpt(file='DEMO_E (2).XPT')
FPED_PATH_5=read_sas('fped_dr1tot_0708.sas7bdat')
NUTRIENT_PATH_5=read_xpt('DR1TOT_E (1).XPT')
f<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_5,NUTRIENT_PATH = NUTRIENT_PATH_5,
                   DEMO_PATH=DEMO_PATH_5)
g<-f[, c("SEQN","DII_ALL")]
g

#2005-2006
DEMO_PATH_4=read_xpt(file='DEMO_D (4).XPT')
FPED_PATH_4=read_sas('fped_dr1tot_0506.sas7bdat')
NUTRIENT_PATH_4=read_xpt('DR1TOT_D (1).XPT')
c<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_4,NUTRIENT_PATH = NUTRIENT_PATH_4,
                   DEMO_PATH=DEMO_PATH_4)
c
d <- c[, c("SEQN","DII_ALL")]

d

#2003-2004
DEMO_PATH_3=read_xpt(file='DEMO_C (3).XPT')
FPED_PATH_3=read_sas('pyr_tot_d1.sas7bdat')
FPED_PATH_3
NUTRIENT_PATH_3=read_xpt('DR1TOT_C (4).XPT')
a<-DII_NHANES_FPED(FPED_PATH=FPED_PATH_3,NUTRIENT_PATH = NUTRIENT_PATH_3,
                   DEMO_PATH=DEMO_PATH_3)
a
b<-a[, c("SEQN","DII_ALL")]
b

#DII
DII<-rbind(b, d, g, I, k, M, o, Q)
DII

#Merge with DII data
merge_data_1<-merge(merge_data,DII,by.x='SEQN',by.y='SEQN',all=TRUE)
merge_data_1
merge_data_1<-merge_data_1 %>%
  filter(RIDAGEYR>=35&RIDAGEYR<85) #Exclude age too old or too young
merge_data_1
merge_data_1<-merge_data_1 %>%
  filter(BMXBMI>=18.5&BMXBMI<24.9) #Excluding extreme weight values
merge_data_1
merge_data_1<-merge_data_1 %>%
  filter(!is.na(arthritis))
merge_data_1
merge_data_1<-merge_data_1 %>%
  filter(!is.na(DII_ALL))
merge_data_1

#Logistic regression model analysis of the effect 
#of DII_ALL (dietary inflammation index) on arthritis
merge_data_2 <- merge_data_1 %>%
  mutate(arthritis = ifelse(arthritis == 2, 0, 1))
merge_data_2
model <- glm(arthritis ~ DII_ALL, data = merge_data_2, family = binomial)
summary(model)
#The model showed that there was a positive association between DII_ALL 
#and arthritis, with a positive and statistically significant coefficient.
library(ggplot2)
library(dplyr)
#Divide the population into different age groups
merge_data_3 <- merge_data_1 %>%
  mutate(age_group = cut(RIDAGEYR, 
                         breaks = c(0,44,54,64,74,84,85), 
                         labels = c('35~44', '45~54', '55~64', '65~74','75~84','85~')))
merge_data_3
#Count the number of people with arthritis in each age group
age_arthritis_count <- merge_data_3 %>%
  group_by(age_group,arthritis) %>%
  summarise(arthritis_count = n())
age_arthritis_count
#Plot a trend graph of age and arthritis diagnosis
ggplot(data = age_arthritis_count, aes(x = age_group, y = arthritis_count, fill = factor(arthritis))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "age group", y = "Number of people", fill = "arthritis status", title = "Distribution of diagnosed and undiagnosed arthritis in each age group") +
  scale_fill_manual(labels = c('diagnosed', 'undiagnosed'), values = c('lightblue', 'pink')) +
  theme_minimal() +
  theme(text = element_text(family = 'Arial', size = 13))

#Calculate the average DII for each age group
mean_DII <- merge_data_3 %>%
  group_by(age_group,arthritis) %>%
  summarize(mean_DII_ALL = mean(DII_ALL, na.rm = TRUE))
mean_DII

DII_arthritis<-merge(age_arthritis_count,mean_DII)
DII_arthritis

#Plot the DII trends for people with undiagnosed arthritis and 
#those with diagnosed arthritis in different age groups
ggplot(data = DII_arthritis, aes(x = age_group, y = mean_DII_ALL, color = factor(arthritis), group = arthritis)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  labs(x = "Age Group", y = "Average DII", color = "Arthritis status", title = "Relationship between arthritis status and DII in different age groups") +
  scale_color_manual(labels = c('diagnosed', 'undiagnosed'), values = c('blue', 'red')) +
  theme_minimal() +
  theme(text = element_text(family = 'Arial', size = 13))





