## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<-inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## The following cacheSolve code will compute and 
##return the inverse of matrix from makeCacheMatrix

cacheSolve <- function(x, ...) {
  
  ##Get the Inverse from makeCacheMatrix
  ##If is null, return from cache the inverse matrix
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ##Otherwise calculate the inverse of matrix and setInverse in cache
  ## Return a matrix that is the inverse of 'x'
  data <- x$get()
  m <- inverse(data, ...)
  x$setInverse(m)
  m
}
