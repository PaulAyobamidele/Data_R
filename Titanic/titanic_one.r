library(titanic)

data(titanic_train)


str(titanic_train)
library(tidyverse)

# CHI TEST

contigency_table <- table(titanic_train$Survived, titanic_train$Pclass)


chisq.test(contigency_table)


survived_data <- factor(titanic_train$Survived, levels = c(0, 1), labels = c("Not Survived", "Survived"))
ggplot(titanic_train) +
    geom_bar(aes(Pclass, fill = survived_data), position = "dodge")




# PERCENTILE


?quakes


sumarry <- quantile((quakes$mag[quakes$depth < 400]), prob = c(0, 0.25, 0.5, 0.75, 1))
sumarry

summary(quakes$mag[quakes$depth < 400])
