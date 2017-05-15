## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv1 <- NULL
  set <- function(y){
    x <<- y
    inv1 <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv1 <<- solveMatrix
  getInverse <- function() inv1
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv1 <- x$getInverse()
  if(!is.null(inv1)){
    message("Collect cached data")
    return(inv1)
  }
  data <- x$get()
  inv1 <- solve(data)
  x$setInverse(inv1)
  inv1 
}
