## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  	  m <- NULL

        ## Function used to set the Matrix
        set <- function(y) {
                x <<- y
                m <<- NULL
        }

        ## Function used to get the Matrix
        get <- function() x

        ## Function used to set solve for Inverse Matrix
        setinverse <- function(inverse) m <<- solve

        ## Function used to get the Inverse of Matrix
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse ,
             getinverse = getinverse )
}


## cacheSolve is used to obtain Inverse of matrix created by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  m <- x$getinverse ()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}


