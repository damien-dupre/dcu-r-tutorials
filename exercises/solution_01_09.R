leinster_county_name <- c("Carlow", "Dublin", "Kildare", "Kilkenny", "Laois", "Longford", "Louth", "Meath", "Offaly", "Westmeath", "Wexford", "Wicklow")

leinster_county_size <- c(896, 921, 1693, 2061, 1719, 1091, 820, 2342, 2000, 1838, 2352, 2024)

leinster_county_population <- c(56932, 1347359, 222504, 99232, 84697, 40873, 128884, 195044, 77961, 88770, 149722, 142425)

leinster_df <- data.frame(
  name = leinster_county_name,
  size = leinster_county_size,
  population = leinster_county_population
)

# Have a look at its structure and its first rows:
str(leinster_df)
head(leinster_df)

# Print the value of the population of County Kildare using dollar sign with
# square brackets:
leinster_df$population[3]

# Print the value of the population of County Kildare using square brackets only:
leinster_df[3, 3]

# Print the value of the size of County Kilkenny using dollar sign with square
# brackets and using square brackets only:
leinster_df$size[4]
leinster_df[4, 2]
