# Return the number (count) of vowels in the given string.
# 
# We will consider a, e, i, o, and u as vowels for this Kata.
# 
# The input string will only consist of lower case letters and/or spaces.


get_count <- function(input_str){
    library(stringr)
    vowel_count <- str_count(input_str, "[aeiou]")
    # or 
    # vowel_count <- length(gregexpr("[aeiou]", x)[[1]])
    return(vowel_count)
}