# Compute fish function: compute msot common fish fished, least common, and total number of fish fished
# @param my_data is your own dataset, in my case it is data of fish

fish_fnct = function(my_data) { 
  
  data_vect <- as.vector(my_data[,1])
  data_fact <- as.factor(data_vect)
  
  most_common_fish <- names(which.max(summary(data_fact)))
  rarest_fish <- names(which.min(summary(data_fact)))
  total_num <- sum(summary(data_fact))
  final_list <- c(most_common_fish,rarest_fish,total_num)
  
  return(final_list)
}