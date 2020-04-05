text_ <- c('this_text', 'next.text')







camel <- function(x){ #function for camel case
  x <- sub('^(\\w?)', '\\U\\1', x, perl=T)
  x <- sub('[^a-zA-Z](\\w?)', '\\U\\1', x, perl=T)
  return(x)
}

print(text_)
print(camel(text_))

# gsub("[^[:alpha:] ]", " ", text_) #splits string on any non alphabet


# simpleCap <- function(x) {
#   s <- strsplit(x, " ")[[1]]
#   paste(toupper(substring(s, 1,1)), substring(s, 2),
#         sep="", collapse=" ")
# }
# 
# name <- c("zip code", "state", "final count")
# 
# sapply(name, simpleCap)
