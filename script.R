library(tidyverse)

#install.packages(gapminder)

library(gapminder)

gapminder

gapminder_bis <- read_csv("Tidyverse Exercises/data/ratio_of_girls_to_boys_in_primary_and_secondary_education_perc.csv")

gapminder_bis


#install.package("readxl)

library(readxl)

gapminder_bis <- read_xlsx("Tidyverse Exercises/data/ratio_of_girls_to_boys_in_primary_and_secondary_education_perc.xlsx")

gapminder_bis



###################



gapminder_bis %>%
  gather(key = year,  value = "ratio_girls_to_boys", -country, na.rm = TRUE)

gapminder_bis %>%
  pivot_longer(-country, names_to = "year", values_to = "ratio_girls_to_boys", values_drop_na = TRUE)


gapminder %>%
  filter(year == 1984)


gapminder %>%
  filter(country == "Spain" & year == 2002)

gapminder %>%
  arrange(pop)


gapminder %>%
  arrange(desc(pop))

gapminder %>%
  filter(country == "France") %>%
  arrange(desc(lifeExp))

gapminder %>%
  mutate(popMil = pop / 1000000,
         lifeExpMonths = lifeExp * 12)