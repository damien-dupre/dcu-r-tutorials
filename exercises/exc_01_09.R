leinster_county_name <- c("Carlow", "Dublin", "Kildare", "Kilkenny", "Laois", "Longford", "Louth", "Meath", "Offaly", "Westmeath", "Wexford", "Wicklow")

leinster_county_size <- c(896, 921, 1693, 2061, 1719, 1091, 820, 2342, 2000, 1838, 2352, 2024)

leinster_county_population <- c(56932, 1347359, 222504, 99232, 84697, 40873, 128884, 195044, 77961, 88770, 149722, 142425)

leinster_df <- data.frame(
  name = leinster_county_name, 
  size = leinster_county_size, 
  population = leinster_county_population
)

# The leinster_df data frame object has been saved in memory, first have a look 
# at it structure and its first rows:

str(_ _ _)

head(_ _ _)

# Print the value of the population of County Kildare using dollar sign with 
# squared brakets:

_ _ _$_ _ _[_ _ _]

# Print the value of the population of County Kildare using squared brakets only:

_ _ _[_ _ _,_ _ _]

# Print the value of the size of County Kilkenny using dollar sign with squared 
# brakets and using squared brakets only:

_ _ _$_ _ _[_ _ _]

_ _ _[_ _ _,_ _ _]