makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    set <- funtion(b) {
      x <<- b
      a <<- NULL
    }
    get_Inv <- function() a
    set_Inv <- function(solve) a <<- solve
    get <- function() x
    list( set = set, get = get, set_Inv = set_Inv, get_Inv = get_Inv )
}

cacheSolve <- function(x, ...){
    a <- x$get_Inv()
    if(!is.null(a)){
      return(a)
    }
      mydata <-x$get()
      a <- solve(mydata,...)
      x$set_Inv(a)
      a
}