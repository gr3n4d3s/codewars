# Your team is writing a fancy new text editor and 
# you've been tasked with implementing the line numbering.
# 
# Write a function which takes a list of strings and 
# returns each line prepended by the correct number.
# 
# The numbering starts at 1. The format is n: string. 
# Notice the colon and space in between.
# 
# Examples:
# 
# number(c()) # => c()
# number(c("a", "b", "c")) # => c("1: a", "2: b", "3: c")

number <- function(lines) {
    #your code here
    x <- c()                                     # initialize x as vector and i counter
    i <- 1
    while (i < length(lines) + 1){
        x <- c(x, paste0(i, ": ", lines[i]))     # paste value and counter to vector
        i <- i + 1
    }
    return(x)
}
