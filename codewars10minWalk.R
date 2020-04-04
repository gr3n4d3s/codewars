## code_wars 10 min walk
isValidWalk <- function(...){
  north <- length(which(c(...) == 'n'))
  south <- length(which(c(...) == 's'))
  east <- length(which(c(...) == 'e'))
  west <- length(which(c(...) == 'w'))

# print(length(c(...)))
# print(north)
# print(south)
# print(east)
# print(west)
  
ns = abs(north - south)
#print(ns)
ew = abs(east - west)
#print(ew)
  
if (length(c(...)) < 10 | length(c(...)) > 10){
#  print(length(c(...)))  
  return(FALSE)
  }else if (ns == 0 & ew == 0){
#  print(c(ns, ew))
  return(TRUE)
  }else{
#  print(length(c(...)))
  return(FALSE)
  }
} 
# def isValidWalk(walk):
#     return len(walk) == 10 
#   and walk.count('n') == walk.count('s') 
#   and walk.count('e') == walk.count('w')