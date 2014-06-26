weez <- as.double(as.Date("2014/6/25") - as.Date("2012/4/12"))
lincecum <- as.double(as.Date("2014/6/25") - as.Date("2013/7/13"))

days <- c(weez, lincecum)
text <- c("804 days since Wilson's last save","347 days since Lincecum's last no-hitter")
derp <- data.frame(days, text)

plot(c(0.1,0.1), derp$days, ylim=c(0, 1000), xlim=c(0,0.4), pch=18,
     xlab="", ylab="")
text(c(0.1, 0.1), derp$days,pos=4,labels=derp$text, cex=0.6)
title(main="Days since June 26 pitching feats")