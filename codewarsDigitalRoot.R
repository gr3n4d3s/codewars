# #digital root
# y=1
# digital_root2=function(n){
#   x=sum(as.numeric(unlist(strsplit(as.character(n),""))))
#   if(x<10){
#     k=x
#   }else{
#     y=y+1
#     assign("y",y,envir = globalenv())
#     k=digital_root(x)
#   }
#   return(k)
# }
# print("Given number has additive persistence",y)
# 
# digitsum <- function(x){
# 
#     sum(floor(x / 10^(0:(nchar(x) - 1))) %% 10)
# 
# 
# }
y=1
digital_root <- function(n) {
  x=sum(as.numeric(unlist(strsplit(as.character(n), split = ""))))
  if(x<10){
    k=x
  }else{
    y=y+1
    k=digital_root(x)
  }
  return(k)
}
