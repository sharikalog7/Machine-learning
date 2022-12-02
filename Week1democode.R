data(ames, package = "modeldata")



dim(ames)

library(tidymodels)
tidymodels_prefer()

head(ames$Sale_Price)

ggplot(ames, aes(x = Sale_Price)) + 
  geom_histogram(bins = 50, col= "white")

ames <-AmesHousing::make_ames()

head(ames)

library(rsample)


mnist <- dslabs ::read_mnist()

names(mnist)

dim(mnist$train$images)


head(mnist$train$labels)
head(mnist$test$labels)


url <-"https://koalaverse.github.io/homlr/data/my_basket.csv"

my_basket <- readr::read_csv(url)

dim(my_basket)


my_basket


library(dplyr)
library(ggplot2)
library(rsample)
library(caret)
library(h2o)


h2o.no_progress()
h2o.init()

ames <-AmesHousing::make_ames()
ames.h2o <- as.h2o(ames)



