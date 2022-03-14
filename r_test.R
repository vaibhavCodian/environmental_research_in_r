data <- read.csv("/home/vaibhav/Documents/bsc_work/EnvironmentAffected.csv")

df_ <- data[order[-data$poverty_percentage]]

View(df_)


summary(data)
hist(log(data$net_traded_deforestation))
boxplot(data$poverty_percentage ~ data$net_traded_deforestation)
plot(data$poverty_percentage ~ log(data$net_traded_deforestation))

t.test(x = df_$poverty_percentage,y = df_$net_traded_deforestation)

data2 <- data[data$poverty_percentage <= 30,]

library(ggplot2)
ggplot(mapping = aes(x=log(df_$poverty_percentage), y=df_$net_traded_deforestation, 
                     col = df_$Country))+geom_point(show.legend = FALSE, alpha=0.5)

