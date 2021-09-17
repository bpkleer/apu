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
library("tidyverse")

# Subset ESS (Österreich)

# a) stfgov
library("psych")

ggplot(essat, 
       aes(stfdem)) +
  geom_bar() + 
  scale_x_continuous(breaks = seq(0, 10, 1)) + 
  geom_text(stat = "count", 
            aes(label= ..count..), 
            vjust = -0.3, 
            size = 3.5) +
  labs(x = "Satisfaction with Democracy", 
       y = "Frequencies", 
       title = "First task") +
  theme_bw()

# b) eduyrs
ggplot(essat,
       aes(eduyrs)) +
  geom_histogram(aes(y = ..density..),
                 alpha = 0.2,
                 binwidth = 1) + 
  geom_density(alpha = 0.2) + 
  labs(x = "Education years", 
       y = "Density", 
       title = "Second task",
       caption = "Subset Austria of ESS.")

# c) vote
ggplot(essat,
       aes(x = factor(1),
           fill = factor(vote))) +
  geom_bar(width = 1) +
  coord_polar("y") +
  theme(
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank(),
    panel.border = element_blank(),
    panel.grid = element_blank(),
    axis.ticks = element_blank()) +
  labs(fill ="Voted",
       title = "Third task") +
  scale_fill_manual(values = c("tomato", "mediumseagreen", "goldenrod"), 
                    labels = c("voted", 
                               "not voted", 
                               "not allowed to vote"))

# d) vote, sgnptit
ggplot(essat, 
       aes(vote)) +
  geom_bar() + 
  scale_x_continuous(breaks = seq(0, 10, 1)) + 
  geom_text(stat = "count", 
            aes(label= ..count..), 
            vjust = -0.3, 
            size = 3.5) +
  facet_wrap(~ sgnptit,
             labeller = labeller(sgnptit = c("1" = "signed petition", 
                                             "2" = "did not", 
                                             "NA" = "Missing data"))) + 
  labs(x = "Voted in last election", 
       y = "Frequencies", 
       title = "Fourth Task") +
  theme_bw()

# e) ppltrst, stfgov, region
ggplot(essat, 
       aes(ppltrst, 
           stfgov,
           color = region)) +
  geom_point() +
  geom_jitter(width = 1, 
              height = 1) +
  scale_x_continuous(breaks = seq(0, 10, 1)) + 
  scale_y_continuous(breaks = seq(0, 10, 1)) + 
  labs(x = "Trust in People", 
       y = "Satisfaction with government",
       title = "Fifth task",
       color = "Region") 

ggplot(essat, 
       aes(ppltrst, 
           stfgov,
           color = region)) +
  geom_point() +
  geom_jitter(width = 1, 
              height = 1) +
  scale_x_continuous(breaks = seq(0, 10, 1)) + 
  scale_y_continuous(breaks = seq(0, 10, 1)) + 
  labs(x = "Trust in People", 
       y = "Satisfaction with government",
       title = "Fifth task",
       color = "Region") +
  facet_wrap(~ region)

