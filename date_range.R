

sub_list <- vector(mode = "list")

for(i in seq_len(length(article_data$keywords))) {
  
 sub_list[[i]] <- article_data$keywords[[i]] |>
  dplyr::filter(name == "subject") |>
  dplyr::pull(value)
 
}



unique_subs <- unlist(sub_list) |> 
  unique()


start <- seq(1,12)

end <- c(seq(2,12),1)


date_seq <- seq(
              as.Date(
                paste0("2021-",start[i],"-1")
                       ), 
              as.Date(
                paste0("2021-",end[i],"-1")
                ), 
                "month")




date_seq[1:(length(date_seq)-1)]

seq(1,5)[1:3]
