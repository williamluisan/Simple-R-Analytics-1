install.packages('datasets')

# load the dataset
data("iris")
data("mtcars")
data("lynx")
data("cars")

# 1.1 plot Species (categorical variable)
plot(iris$Species, xlab = 'Species', ylab = "Jumlah", col = "lightblue")

# 1.2 plot Petal.Length (quantitative variable)
plot(iris$Petal.Length, xlab = "Petal Length", col = "blue")

# 1.3 Species vs Petal.width (categorical vs quantitative var.)
plot(
    iris$Species, iris$Petal.Width, 
    xlab = "Species", 
    xylab = "Petal Width", 
    col = "lightblue"
)

# 1.4 Petal.Length vs Petal.Width (Quantitative Pair)
plot(
    iris$Petal.Length, 
    iris$Petal.Width, 
    xlab = "Petal Lenght", 
    ylab = "Petal Width", col = "blue"
)

# 1.5 iris (entire data frame)
plot(iris)

# 2. mtcars mpg vs weight
plot(
  mtcars$wt, 
  mtcars$mpg, 
  xlab = "Weight (in 1000 pounds)", 
  ylab = "MPG",
  col = "red",
  pch = 19
)

## 3. Histogram of Annual Cannadian Lynx Trappings, 1821-1934
  # HISTOGRAM WITH OPTIONS
  hist(
       lynx,
       breaks = 14,  # "Suggests" 14 bins.
       freq = FALSE,  # Axis shows density, not frequency.
       col = "thistle1",   
       main = "Histogram of Annual Canadian Lynx Trappings\n1821-1934",
       xlab = "Number of Lynx Trapped"
  )  # Label X axis
  
  # SUPERIMPOSED NORMAL DISTRIBUTION
  curve(
      dnorm(x, mean = mean(lynx), sd = sd(lynx)),  # Shape, mean, SD
      col = "thistle4", 
      lewd = 1, # Line width of 2 pixels.
      add = TRUE # Superimpose on the previous graph.
  )  
  
  # SUPERIMPOSED KERNEL DENSITY ESTIMATES
  lines(density(lynx), col = "blue", lwd = 2)
  lines(density(lynx, adjust = 3), col = "darkgreen", lwd = 2)
  
  # SUPERIMPOSED RUG PLOT
  rug(lynx, lwd = 2)
## // Histogram of Annual Cannadian Lynx Trappings, 1821-1934
  
# 4.1 Please find the frequencies of Species variable (categorical variable)
table(iris$Species)

# 4.2 Please find the descriptive statistics (mean, median, min, max) of the Sepal Length variable
matrix1 <- matrix(
    c(mean(iris$Sepal.Length), median(iris$Sepal.Length), min(iris$Sepal.Length), max(iris$Sepal.Length))
  )
colnames(matrix1) <- c("Sepal.Length")
rownames(matrix1) <- c("Mean", "Median", "Min", "Max")
matrix1 <- as.table(matrix1)
matrix1

head(iris)

# 4.3 Please find the descriptive statistics (mean, median, min, max) of all the variable in irish dataset
mean_vector <- c(
  mean(iris$Sepal.Length), # Sepal.Length mean
  mean(iris$Sepal.Width), # Sepal.Width mean
  mean(iris$Petal.Length), # Petal.Length mean
  mean(iris$Petal.Width) # Petal.Width mean
)

median_vector <- c(
  median(iris$Sepal.Length), # Sepal.Length median
  median(iris$Sepal.Width), # Sepal.Width median
  median(iris$Petal.Length), # Petal.Length median
  median(iris$Petal.Width) # Petal.Width median
)

min_vector <- c(
  min(iris$Sepal.Length), # Sepal.Length min
  min(iris$Sepal.Width), # Sepal.Width min
  min(iris$Petal.Length), # Petal.Length min
  min(iris$Petal.Width) # Petal.Width min
)

max_vector <- c(
  max(iris$Sepal.Length), # Sepal.Length max
  max(iris$Sepal.Width), # Sepal.Width max
  max(iris$Petal.Length), # Petal.Length max
  max(iris$Petal.Width) # Petal.Width max
)

column.names <- c("Mean", "Median", "Min", "Max")
row.names <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
matrix.names <- c("") 
result <- array(c(mean_vector, median_vector, min_vector, max_vector), dim = c(4, 4, 1), 
            dimnames = list(row.names, column.names, matrix.names)
          ) 
result