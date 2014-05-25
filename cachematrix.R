##These functions calculate the inverse of a matrix and cache it to save computation time

makeCacheMatrix <- function(x = matrix()) {
  ## This function creates a way to save the inverse of the matrix 'x'
  m <- NULL
  set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setmatrix <- function(solve) m <<- solve
getmatrix<- function() m
list(set = set, get = get,
     setmatrix = setmatrix,
     getmatrix= getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
 ##This function checks the cache for the inverse matrix; if not in cache, it calculates it 
 m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix,...)
  x$setmatrix(m)
 m
  #return the inverse matrix
}
