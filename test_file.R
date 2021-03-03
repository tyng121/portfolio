library(dplyr)

df <- data.frame(a=rnorm(100),b=rnorm(100), c= sapply(1:100, sample, x=letters, size=1))

df_summary <- df %>%
group_by(c) %>%
summarize(avg = mean(a, na.rm=TRUE))
