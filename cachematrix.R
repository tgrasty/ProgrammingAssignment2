## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse<-solve(x)
    retornar<<-list(matrix=x,inverse=inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    if(!exists("retornar")){
        result<-makeCacheMatrix(x)$inverse
        result
    }
    else
        if(!all(dim(retornar$matrix)==dim(x))) {
            result<-makeCacheMatrix(x)$inverse
            result
        }
    else 
        if(!all(retornar$matrix==x)){
            result<-makeCacheMatrix(x)$inverse
            result
        }  
    else retornar$inverse
}
