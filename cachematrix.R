## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matData <- NULL; 
  
  set <- function( newVal ){ 
    x <<- newVal; 
    matData <<- NULL;
  }
  
  get <- function() x; # get the value out of the matrix
  setInverseMatrix <- function( invVal ) matData <<- invVal;
  
  
  getInverseMatrix <- function() matData;
  
  
  list(set = set, get = get, 
       setInverseMatrix = setInverseMatrix, 
       getInverseMatrix = getInverseMatrix);

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invVal <- x$getInverseMatrix();
  if( !is.null( invVal ) ){
    
    message("Returning cached value");
    return( invVal );
  }
  
  
  val <- x$get();
  
  invVal <- solve( val );
  
  x$setInverseMatrix( invVal );
  
  return( invVal );
}
