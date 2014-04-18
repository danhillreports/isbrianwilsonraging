sf<-read.csv('bweez.csv')
sd <- read.csv('../2014-03-31-sunday-night/bweez.csv')

stringify_pitches <- function(data)
{
  data$pitch_str <- as.character(data$pitchtype)
  return(data)
}

get_fastballs <- function(data)
{
  fastballs <- c('FF', 'FT')
  subset(data, pitch_str %in% fastballs)
}
  
sd <- stringify_pitches(sd)
sf <- stringify_pitches(sf)

sd.fb <- get_fastballs(sd)
sf.fb <- get_fastballs(sf)

mean(sd.fb$vs)
# 91.16364
mean(sf.fb$vs)
# 94.87778

max(sf.fb$vs)
# 96.4
max(sd.fb$vs)
# 92.2

table(sf.fb$outcome)
#B S X 
#2 5 2

table(sd.fb$outcome)
#B S X 
#6 5 0 

table(sf$pitchtype)
#FF FT SL 
#7  2 19

table(sd$pitchtype)
#CU FF FT SL 
#1  5  6 13
