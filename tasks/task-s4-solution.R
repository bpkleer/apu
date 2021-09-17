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

# Beispiel anhand von stfdem (Zufriedenheit mit der Demokratie)
summary(essat$stfdem)

sd(essat$stfdem,
   na.rm = TRUE)

var(essat$stfdem,
    na.rm = TRUE)

ggplot(essat,
       aes(stfdem)) +
  geom_bar() +
  scale_x_continuous(breaks = seq(0,
                                  10,
                                  1))