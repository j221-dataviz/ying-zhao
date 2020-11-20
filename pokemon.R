# load required packages
library(tidyverse)

# load data
pokemon <- read_csv("data/pokemon.csv")
dps <- read_csv(("data/comprehensive_dps.csv")) %>%
  unique()

glimpse(pokemon)


ggplot(pokemon, aes(x=generation, fill=type1)) + geom_histogram()

type1_generation <- pokemon %>%
  group_by(type1,generation) %>%
  count() %>%
  arrange(-n)


ggplot(pokemon, aes(x=height_m, y=attack)) + geom_point() + geom_smooth()
ggplot(pokemon, aes(x=weight_kg, y=attack)) + geom_point() + geom_smooth()
ggplot(pokemon, aes(x=height_m, y=weight_kg)) + geom_point() + geom_smooth()

