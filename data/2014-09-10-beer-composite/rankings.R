library(plyr)

data <- read.csv('relievers.csv')

stats <- names(data)[2:length(names(data))]
rank_stats <- paste(stats, '.rk', sep='')

# these stats should be sorted in reverse
# because having a high walk rate is bad
reverse_stats <- c("BB", "ERA", "FIP", "WHIP")

# assigns ranking to each reliever for a given stat
# highest score is best ranking, 1 is worst
rank_stat <- function(stat)
{
  new_col <- paste(stat, '.rk', sep='')
  if (stat %in% reverse_stats) {
    data[new_col] <- rank(data[stat] * -1)
  }
  else {
    data[new_col] <- rank(data[stat])
  }
  return(data[new_col])
}

new_data <- do.call(cbind, lapply(stats, rank_stat))

# make a new column of the sum of all the reliver's rankings
data["Overall"] <- as.vector(rowSums(new_data[rank_stats]))
# sort by the overall sum
data <- arrange(data, -Overall)

# normalize scores to 100 so they make a bit more sense
# if pitcher was best in all rankings, he would get 100
data$Overall <- round((data$Overall/(length(rank_stats) * length(data$Name))) * 100, 1)

write.csv(data, 'ranked-composites.csv')
