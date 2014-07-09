require(ggplot2)
data <- read.csv("relief-era.csv")

p <- ggplot()
(p + geom_line(data=data, aes(x=as.Date(Date), y=ERA)) + facet_wrap(~ Pitcher)
 + labs(x="Game Date", y="ERA", title="2014 ERA by date")
 + theme(strip.text.x = element_text(size=20)))
