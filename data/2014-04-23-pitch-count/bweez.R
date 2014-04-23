require(ggplot2)

pitchCounts <- data.frame(count=c(28, 23, 15),
                          opponent=c("4/17 vs. SF",
                                   "4/19 vs. ARI",
                                   "4/22 vs. PHI"))

ggplot(data=pitchCounts, aes(opponent, count)) + geom_bar() +
  ylim(c(0,30)) +
  theme_minimal() +
  xlab("Opponent") + ylab("Pitches thrown") +
  labs(title="Pitch counts since 15-day DL") +
  geom_text(data=pitchCounts, stat='identity', color="white",
            aes(y=count-2, label=count))