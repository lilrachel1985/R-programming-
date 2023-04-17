library(tidyverse)
hdi<-read.csv("C:/Users/hp/Documents/hdi-cpi.csv",stringsAsFactors = FALSE)
hdi<-as.tibble(hdi)
hdi
sp <-ggplot(hdi,aes(CPI.2015,HDI.2015))
sp + geom_point(aes(color=Region),shape =21, fill="white",size =3, stroke =2) + theme_light()+
  labs(x="Corruption Perception Index, 2015",
       y="Human Development Index,2015",
        title="Corruption and Human Development")
#Adding a statistic layer
sp + geom_point(aes(color=Region),shape =21, fill="white",size =3, stroke =2) + theme_light()+
  labs(x="Corruption Perception Index, 2015",
       y="Human Development Index,2015",
       title="Corruption and Human Development")+
  stat_smooth(se=FALSE)
#Another one
sp + geom_point(aes(color=Region),shape =21, fill="white",size =3, stroke =2) + theme_light()+
  labs(x="Corruption Perception Index, 2015",
       y="Human Development Index,2015",
       title="Corruption and Human Development")+
  stat_density2d()