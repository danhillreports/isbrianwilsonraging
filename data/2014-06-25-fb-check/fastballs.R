require(ggplot2)
data <- read.csv('savant.csv')

data$Game.Date <- as.Date(data$Game.Date, "%m/%d/%y")

# Wilson's average fastball velocity this year is 92.6 mph with a 1.9 standard deviation
mean(data$MPH)
sd(data$MPH)

max(data$MPH)
# Wilson has hit 95 on the radar gun 11 times since April 17
table(data[data$MPH>=95,]$Game.Date)

p <- ggplot()
p + geom_point(data=data, aes(x=Game.Date, y=MPH),
               position=position_jitter(width=.1,height=.1)) +
  geom_smooth(data=data, aes(x=Game.Date, y=MPH)) +
  labs(title="Brian Wilson's fastball velocity", x="Game date")
