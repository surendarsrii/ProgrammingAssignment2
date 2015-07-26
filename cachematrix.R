## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function

makeCacheMatrix <- function(matrixobj){
      
 
  inverse <- NULL
      setmatrix <- function(x) 
          {
          matrixobj <<- x
          inverse <- NULL
          }
      
      getmatrix <- function() 
          {
          matrixobj
          }
      setinverse <- function(invmat)
          {
        inverse <<- invmat
        
          }
      getinverse <- function() 
          {
          inverse
          }
  
        list(set = setmatrix, get = getmatrix,
             setinv=setinverse,getinv = getinverse)
}


## cacheSolve function

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
 mat <- x$get()
 inversematrix <- solve(mat)
 x$setinv(inversematrix)
 
 inversematrix
}
