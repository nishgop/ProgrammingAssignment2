## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mi <- NULL
  set <- function(y) {
    x <<- y
    mi <<- NULL
  }
  get <- function() x
  setmatinv <- function(mat1) mi <<- mat1
  getmatinv <- function() mi
  list(set = set, get = get,
       setmatinv = setmatinv,
       getmatinv = getmatinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  mi <- x$getmatinv()
  if(!is.null(mi)) {
    message("getting cached data")
    return(mi)
  }
  data <- x$get()
  mi2 <- solve(data,...)
  x$setmatinv(mi)
  mi   
}