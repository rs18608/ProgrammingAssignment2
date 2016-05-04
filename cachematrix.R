## The first function, makeCacheMatrix creates a special "vector", which is really a list containing a function to

## 1. set the value of the vector
## 2. get the value of the vector
## 3. set the value of the mean
## 4. get the value of the mean

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


## The following function calculates the mean of the special "matrix" created with the above function. 
## However, it first checks to see if the inverse of the matrix  has already been calculated.
## If so, it gets the inverse matrix from the cache and skips the computation.
## Otherwise, it calculates the inverse ofthe matrix using the solve() method and sets the value of the inverse in the cache via the setInverse function.

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


