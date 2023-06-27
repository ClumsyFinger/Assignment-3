library(ggplot2)
library(datasets)
library(dplyr)
library(rvest)

# Load the iris dataset
data(iris)

# Create the scatterplot
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length", color = "Species") +
  theme_minimal()

# By examining the plot, We can make conclusions such as:
# Setosa species generally has shorter Sepal.Length and Petal.Length compared to the other two species.
# Versicolor species tends to have intermediate values for both Sepal.Length and Petal.Length.
# Virginica species generally has longer Sepal.Length and Petal.Length compared to the other two species.
# These observations can help us understand the characteristic differences between the iris species based on the two variables plotted.

############## Question 2 ###############################

# Load txhousing dataset
data(txhousing)
# View the structure of the dataset
str(txhousing)
# Summary statistics of the dataset
summary(txhousing)
# Create a histogram of the median house prices
ggplot(txhousing, aes(x = median)) +
  geom_histogram(fill = "steelblue", color = "white") +
  labs(x = "Median House Price", y = "Frequency", title = "Distribution of Median House Prices")
# Create a scatterplot of sales prices against listings
ggplot(txhousing, aes(x = sales, y = listings)) +
  geom_point() +
  labs(x = "Sales", y = "Listings", title = "Scatterplot of Sales Prices vs. Listings")


############# Question 3 #################################

# Load required libraries
library(ggplot2)

# Read the Titanic dataset
titanic <- read.csv("titanic.csv", stringsAsFactors = FALSE)

# Map the Survived variable to a factor for proper ordering
titanic$Survived <- factor(titanic$Survived, levels = c(0, 1), labels = c("Died", "Survived"))


# Create the plot
final_Plot <- ggplot(titanic, aes(x = Survived, y = Fare, color = Sex, fill = Sex)) +
  geom_boxplot(fill = "transparent") +
  scale_fill_manual(values = c("female" = "transparent", "male" = "transparent")) +
  scale_color_manual(values = c("female" = "red", "male" = "turquoise")) +
  labs(x = "Survived", y = "Fare", color = "Sex", fill = "Sex",
       title = "Boxplot of Fare vs. Survival by Sex",
       subtitle = "Irrespective of Sex,richer people survived") +
  theme_bw() +
  coord_flip()
  theme(plot.subtitle = element_text(size = 08))  
# Display the plot
final_Plot

