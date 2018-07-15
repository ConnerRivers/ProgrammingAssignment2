## Put comments here that give an overall description of what your
## functions do

## Week 3 assignment; July 15, 2018; GitHub user: ConnerRivers
## Coursera - R Programming

## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) { 
  inverser <- NULL 
  set <- funtction(y) 
    x <<- y
    inverser <<- NULL
  
  get <- function() x
  
  setinv <- function(inverse) inverser <<- inverse
  getinv <- function() inverser
  list(set = set, get = get, setinv = setinverse, getinv = getinverse)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
## If the inverse has already been calculated (and the matrix has not changed)
## then the cachesolve should retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverser <- x$getinv()
  if(!is.null(inverser)) {
    message("getting cached data")
    return(inverser)
  }
  data <- x$get()
  inverser <- solve(data, ...)
  x$setinv(inverser)
  inverser
}

