tree_data <- datasets::trees

#b
MOE<- qt(.975,length(tree_data$Height)-1)*sd(tree_data$Height)/sqrt(length(tree_data$Height))
CI<-mean(tree_data$Height)+c(-MOE,MOE)


