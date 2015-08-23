## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function( matrix ) {
        m <<- matrix
        i <<- NULL
    }
	## Get matrix
    get <- function() {
    	m
    }
	
	## Set inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
	
	## Get inverse of the matrix
    getInverse <- function() {
        i
    }
	## Back a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  ## If returned matrix is not null then getting cached data
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  ## Set inverse to 'x'
  x$setInverse(inv)
  ## Back the matrix
  inv
}
