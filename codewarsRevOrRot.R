# The input is a string str of digits. 
# Cut the string into chunks 
# (a chunk here is a substring of the initial string) 
# of size sz (ignore the last chunk if its size is less than sz).
# 
# If a chunk represents an integer such as the sum 
# of the cubes of its digits is divisible by 2, 
# reverse that chunk; otherwise rotate it to the 
# left by one position. Put together these modified 
# chunks and return the result as a string.
# Examples:
# revrot("123456987654", 6) --> "234561876549"
# revrot("123456987653", 6) --> "234561356789"
# revrot("66443875", 4) --> "44668753"
# revrot("66443875", 8) --> "64438756"
# revrot("664438769", 8) --> "67834466"
# revrot("123456779", 8) --> "23456771"
# revrot("", 8) --> ""
# revrot("123456779", 0) --> "" 
# revrot("563000655734469485", 4) --> "0365065073456944"


revrot <- function(str, sz){
    
    strnum <- nchar(str)    #lengthe of string
    cuts <- strnum%/%sz     #Numer of cuts to make     
    
    #print(strnum)
    #print(strnum%/%sz)
                                       
    if(str == "" | sz <= 0 | sz > strnum) return("") #check for valid input
        str <- strsplit(str,'')[[1]]                 #split string                 
    #print(str)
        
        m <- matrix('', nrow=sz, ncol=(length(str)+sz-1)%/%sz)  # build matrix where the number of rows are the
    #print(m)                                                   # number of cuts
       m[seq_along(str)] <- str                                 # populate the matrix so that columns are filled with chunks
    #print(m)
       
        x <- apply(m, 2, paste, collapse='')   # applys paste to the columns of the matrix giving the chopps
        x <- x[1:cuts]                         # indexes the cuts and leaves off the last if applicable
    #print(x)

a <- strsplit(x, '')                           # split for math
a <- lapply(a, as.numeric)                     # as.numeric for math
c <- lapply(a, FUN = function(x) if (sum(x^3) %% 2 == 0) {  # apply cube function accross list
                                                            # Check if through list for division by 2 aka even
    y <- paste0(rev(x), collapse = '')    # reverse if even
    return(y)
    } else {
        y <- paste0(x, collapse = '')                    # collapse numbers to one string
        y <- paste0(substring(y, 2), substring(y, 1, 1)) # paste first substring and the end of all but first substr
        return(y)
        })
c <- paste0(c, collapse = '')
return(c)
}


# test ... revrot("12345678910111213", 5)

