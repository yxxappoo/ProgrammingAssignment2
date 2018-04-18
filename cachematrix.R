## Assignment2_Xiaoxu Yang
## The functions below cache the inverse of a matrix

## Part 1
## This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix <- NULL
    set <- funtion(theMatrix){
        x <<- theMatrix
        inverseMatrix <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) inverseMatrix <<- solve
    getInverse <- function() inverseMatrix
    list(set = set, 
         get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
}


## This function computes the inverse of the special matrix
## returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
    inverseMatrix <- x$getInverse()
    if(!is.null(inverseMatrix)){
        message("getting cached data")
        return(inverseMatrix)
    }
    data <- x$get()
    inverseMatrix <- solve(data, ...)
    x$setInverse(inverseMatrix)
    inverseMatrix
}
