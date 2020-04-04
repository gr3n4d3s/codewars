# This time no story, no theory. 
# The examples below show you how to write function accum:
#     
# Examples:
# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"


accum <- function(s){

    s <- unlist(strsplit(s,''))  # split string apart
    ans = ''                     # initialize string
    i = 1                        # initialize index counter
   
     while (i < length(s)+1){    # iterate through index
        n = 0                    # initialize counter n
        
        while (n < i){           # loop through for a given index number
            
            if (n == 0){
                ans <- paste0(ans,toupper(s[i]))
            }else{
                ans <- paste0(ans,tolower(s[i]))
            }
            n <- n + 1
        }
        
        ans <- paste0(ans,"-")   # paste - after each index loop
        i <- i +1
     }
    ans <- substr(ans, 1, nchar(ans)-1) # chop off last dash
    return(ans)
}







