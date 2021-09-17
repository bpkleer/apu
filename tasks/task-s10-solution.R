###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
#                                                                         #
# Course:      Analyse politischer Unterstützung                          #
# Instructor:  Benedikt Philipp Kleer                                     #
# Location:    Justus-Liebig-University Giessen (Germany)                 #
# Date:        Winter Term 2021/22                                        #
#                                                                         #
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###

# Vorbereitungen ----
path <- "C:/Users/g31442/Downloads/"
statistics <- readRDS(file.path(path,
                                "statistics.rds"))

# Bivariates Modell ----
ols.model <- lm(grade3 ~ 1 + grade,  
                data = statistics)    
summary(ols.model)

# Multivariates Modell ----
ols.model2 <- lm(grade3 ~ 1 + grade + term,   
                 data = statistics)               
summary(ols.model2)

# Multivariates Modell mit dichotomer kategorieller Variable ----
ols.model3 <- lm(grade3 ~ 1 + grade + term + tutorial,   
                 data = statistics)                

summary(ols.model3)

# Multivariates Modell mit polytomer kategorieller Variable ----
ols.model4 <- lm(grade3 ~ 1 + grade + term + tutorial + learner,
                 data = statistics)                
summary(ols.model4)

# Referenzkategorie ändern
statistics$learner <- relevel(statistics$learner, 
                              ref = "medium")

ols.model5 <- lm(grade3 ~ 1 + grade + term + tutorial + learner,
                 data = statistics)   
summary(ols.model5)
