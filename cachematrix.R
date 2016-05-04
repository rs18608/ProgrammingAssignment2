## Put comments here that give an overall description of what your
## functions do

makeCacheMatrix <- function(x = matrix()) {
  myInverse <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) myInverse <<- inverse
  getInverse <- function() myInverse
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  myInverse <- x$getInverse()
  if(!is.null(myInverse)) {
    message("get cached inverse data.")
    return(myInverse)
  }
  data <- x$get()
  myInverse <- solve(data)
  x$setInverse(myInverse)
  myInverse
}


