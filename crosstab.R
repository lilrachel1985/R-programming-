#Example 1
Grade = sample(c("A","B","C","D","F"), 20, replace = TRUE)
School = sample(c("Public", "Private"), 20, replace = TRUE)
x = data.frame(Grade, School)
x
source("http://pcwww.liv.ac.uk/~william/R/crosstab.r")
crosstab(x, row.vars = "Grade", col.vars = "School")

#Example 2
df <- data.frame(team=c('X', 'X', 'X', 'X', 'Y', 'Y', 'Y', 'Y'),
                 position=c('A', 'A', 'B', 'C', 'C', 'C', 'D', 'D'),
                 points=c(107, 207, 208, 211, 213, 215, 219, 313))
df
library(dplyr)
library(tidyr)

df %>%
  group_by(team, position) %>%
  tally() %>%
  spread(team, n)