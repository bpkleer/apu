###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###
#                                                                         #
# Course:      Analyse politischer Unterstützung                          #
# Instructor:  Benedikt Philipp Kleer                                     #
# Location:    Justus-Liebig-University Giessen (Germany)                 #
# Date:        Winter Term 2021/22                                        #
#                                                                         #
###~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~###

# Vorbereitungen ----
path <- "./tasks/data/"
essat <- readRDS(file.path(path, 
                           "essat.rds"))
# Subset ESS (Österreich)

# 3 Korrelationen
library("psych")

# Korrelation 1: happy & ppltrst
corr.test(essat$happy, 
          essat$ppltrst,
          method = "pearson",       
          use = "complete.obs")

# Korrelation 2: stfdem & stfeco
corr.test(essat$stfdem, 
          essat$stfeco, 
          method = "pearson",
          use = "complete.obs")

# Korrelation 3: trstprl & trstprt
corr.test(essat$trstprl, 
          essat$trstprt, 
          method = "pearson",
          use = "complete.obs")


# Mittelwertvergleich: 2 Gruppen auf trstprl
# gndr: Gruppenvariable
library("car")
leveneTest(essat$trstprl, 
           essat$gndr, 
           center = "mean")

t.test(essat$trstprl[essat$gndr == 1],
       essat$trstprl[essat$gndr == 2], 
       mu = 0, 
       alternative = "two.sided", 
       paired = FALSE, 
       var.equal = TRUE)
