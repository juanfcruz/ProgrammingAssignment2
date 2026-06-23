
## create matrix object



makeCacheMatrix<- function( x=matrix())
{
  inverseMatrix<- NULL
  set       <- function(y){
    x<<-y
    inverseMatrix <<- NULL
  } 
  get  <- function() x
  setInverse <- function (inverse) inverseMatrix  <<-inverse 
  getInverse <- function () inverseMatrix
  
  list (set=set, get=get, setInverse=setInverse ,getInverse=getInverse)
  
}


## Write a short comment describing this function

#function that gets the inverse of the matrix, it calculates it if it doesnt exist

cacheSolve <- function (x, ...){
  m <-x$getInverse()
  if (!is.null(m))
  {
    message("getting cached data")
    return(m)
    
    ## Return a matrix that is the inverse of 'x'
  }
  mat <- x$get( )
  m<- solve(mat,...)
  x$setInverse(m)
  m
  
}


