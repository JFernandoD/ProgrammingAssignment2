
## Caching the inverse of a matrix
# the function makeCacheMatrix creates a special Matrix object 

makeCacheMatrix <- function (x=numeric()) {
  m <- NULL
  set <- function (y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
#  setmean <- function(mean) m <<- mean
#  getmean <- function () m
#  list (set = set, get=get, setmean = setmean, getmean= getmean)
setinv <- function(inv) m <<- inv
getinv <- function ( ) m
list (set = set, get=get, setinv = setinv, getinv= getinv)
}


cacheSolve <- function (x, ...) {
  m <- x$getinv()
  if (!is.null(m)) {
    message ("getting cached data")
    return (m)
  }
  data <- x$get()
#  m <- mean(data, ...)
  m <- solve(data)
  x$setinv(m)
  m
}
