# be sure to setwd(/path/to/csv-directory)
bweez <- read.csv("bweez.csv")

bweez$time <- (as.POSIXlt(bweez$time))
bweez$pitch_str <- as.character(bweez$pitchtype)
bweez$IsSlider <- ifelse(bweez$pitchtype == 'SL', 1, 0)

ggplot(bweez, aes(y=vs, x=as.POSIXlt(time), color=outcome, size=5))
    + geom_point() + scale_colour_discrete(name = 'Pitch Result')
    + facet_wrap(~ IsSlider, ncol=1)
    + labs(title="Brian Wilson pitchFX, 3/30/14 vs Padres", x="Time of pitch", y='Pitch speed')
