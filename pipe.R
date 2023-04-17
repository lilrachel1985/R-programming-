library(tibble)
library(dplyr)
#using pipe to summarize one variable
#summarize mean mpg grouped by cyl
mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean_mpg = mean(mpg))
#using pipe to summarize multiple variables
#summarize mean mpg and standard dev of hp grouped by cyl and am
mtcars %>% 
  group_by(cyl, am) %>% 
  summarise(mean_mpg = mean(mpg),
            sd_hp = sd(hp))
#using pipe to create a new variable
#add two new variables in mtcars
new_mtcars <- mtcars %>%
                mutate(mpg2 = mpg*2,
                       mpg_root = sqrt(mpg))

#view first six rows of new data frame
head(new_mtcars)