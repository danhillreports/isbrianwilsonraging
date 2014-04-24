require(ggplot2)

pitches <- read.csv('pitches.csv')

pitches$outcome_str <- as.character(pitches$outcome)
pitches$IsStrike <- ifelse(pitches$outcome_str=='S',1,0)

pitches$pitcher_str <- as.character(pitches$pitcher)

pitches.calledList <- c("S", "B")
pitches.called <- subset(pitches, outcome_str %in% pitches.calledList)

bweez <- subset(pitches.called, pitcher == "Brian Wilson")

strikes.loess <- loess(IsStrike ~ px + pz, data=pitches.called)
pred.area <- expand.grid(px=seq(-2, 2, 0.1), pz=seq(0, 6, 0.1))
pred.area$fit <- c(predict(strikes.loess, pred.area))

contourplot(fit ~ px * pz, data=pred.area,
            at=c(.2, .4, .6, .8),
            aspect="iso",
            xlim=c(-2, 2), ylim=c(0, 5),
            xlab="horizontal location (ft.)",
            ylab="vertical location (ft.)",
            main="Location of called strikes 4/17 Giants vs Dodgers",
            panel=function(...){
              panel.contourplot(...)
              panel.rect(inKzone, botKzone, outKzone, topKzone,
                         border="black", lty="dotted")
            }
)

p <- ggplot()
require(hexbin)
pitches.calledStrikes <- subset(pitches.called, IsStrike == 1)
(p + geom_hex(data=pitches.calledStrikes, aes(px, pz))
 + geom_path(aes(x, y), data=kZone) 
 + geom_point(data=bweez, aes(px, pz, col=outcome), size=3)
 + geom_text(data=bweez, aes(label=batter, x=px, y=pz, size=1)))

(p + geom_path(aes(x, y), data=kZone)
 + geom_point(data=bweez, aes(px, pz, col=outcome), size=3)
 + geom_text(data=bweez, aes(label=time, x=px, y=pz, size=0.3)) 
 + xlab("Horizontal location (ft)")
 + ylab("Vertical location (ft)"))

# the controversial pitches to Sandoval and Posey were
# Wilson's 17th and 24th, respectively
bweez.nasty <- bweez[c(17,24),]

(p + geom_path(aes(x, y), data=kZone)
 + geom_point(data=bweez.nasty, aes(px, pz), size=3, col="#2352E8")
 + geom_text(data=bweez.nasty, aes(label=batter, x=px-0.7, y=pz))
 + theme_minimal()
 + labs(x="Horizontal location (ft)", y="Vertical location (ft)",
          title="Controversial strikes")
 + xlim(c(-2, 2)) + ylim(c(0, 5)))