library(httr)
library(tidyverse)
library(jsonlite)


api_key <- 'cNOhrFXwqw8Yiowb7S8YRAxh0gSNyVXu'
article_url <- 'https://api.nytimes.com/svc/search/v2/articlesearch.json?'

begin_date <- '20210524'
end_date <- '20210701'

query <- "Demonstrations,%20Protests%20and%20Riots"

url <- paste0(
  article_url,
  'begin_date=',
  begin_date,
  '&end_date=',
  end_date,
  "&q=",
  query,
  "&api-key=",
  api_key)


response <- httr::GET(url)

parsed_list <- fromJSON(
  rawToChar(
    response$content
  )
)

article_data <- parsed_list$response$docs
article_data$keywords
