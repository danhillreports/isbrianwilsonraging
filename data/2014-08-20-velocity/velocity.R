bweez <- read.csv("weez.csv")
require(ggplot2)

bweez$time <- (as.POSIXlt(bweez$time))
bweez$pitch_str <- as.character(bweez$pitchtype)

ggplot(bweez) + geom_point(aes(y=vs, x=as.POSIXlt(time), color=outcome, size=5))
+ labs(title="Brian Wilson pitch velocities vs Padres", x="Time of pitch", y='Pitch speed')
+ geom_text(color="black", aes(y=vs, x=as.POSIXlt(time), label=pitchtype))