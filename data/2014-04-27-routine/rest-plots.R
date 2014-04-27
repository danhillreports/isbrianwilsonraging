require(ggplot2)
rest <- read.csv("rest.csv")

ggplot(data=rest, aes(rest, count)) +
  geom_bar(stat="identity", fill="#2352E8") + facet_wrap(~year,ncol=1) +
  geom_text(color="black", aes(y=count+3, label=count), size=3) +
  labs(title="Games pitched by days of rest",
       x="Days of rest", y="Number of games pitched") +
  theme_classic() +
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), axis.ticks.y=element_blank())