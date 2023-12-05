library(tidyverse)

example <- data.frame(temperature = c(1:1000)) %>% 
  mutate(m = 5.7*10^-8* temperature^2,
         lambda = 2898/temperature)

ggplot(data = example) +
  geom_point(aes(x = temperature, y = m))

ggplot(example) +
  geom_point(aes(x = temperature, y = lambda))

