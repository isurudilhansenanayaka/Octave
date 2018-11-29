tree_data <- datasets::trees

#b
MOE<- qt(.975,length(tree_data$Height)-1)*sd(tree_data$Height)/sqrt(length(tree_data$Height))
CI<-mean(tree_data$Height)+c(-MOE,MOE)

#c
mean_girth = mean(tree_data$Girth)
Type = c()
for(i in 1:length(tree_data$Girth)){
  if(tree_data$Girth[i]>=mean_girth)
    Type[i]="A"
  else
    Type[i]="B"
}

tree_data=cbind(tree_data, Type)
tree_data
