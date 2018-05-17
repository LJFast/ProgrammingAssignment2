## Coursera John Hopkins Data Science Specialization: 
<<<<<<< HEAD

## Course 2 R Programming, Programming Assignment 2




## The functions will help in calculating the inverse 

## of a matrix by caching the inverse to increase 

## computing speed, especially for large matrices

## The functions is modelled on the examples in the assignment 

## instructions




## makeCacheMatrix: with the input of an variable of matrix 

## type, it creates a special matrix to facilitate caching.



=======
## Course 2 R Programming, Programming Assignment 2

## The functions will help in calculating the inverse 
## of a matrix by caching the inverse to increase 
## computing speed, especially for large matrices
## The functions is modelled on the examples in the assignment 
## instructions
>>>>>>> 1157b61a75c8cacb776971f7fe335c40c6c6d06f

## makeCacheMatrix: with the input of an variable of matrix 
## type, it creates a special matrix to facilitate caching.

<<<<<<< HEAD
  I <- NULL

  set <- function(y) {

    x <<- y

    I <<- NULL

  }

  get <- function() x

  setinverse <- function(inverse) I <<- inverse 

  getinverse <- function() I

  list(set = set, get = get,

       setinverse = setinverse,

       getinverse = getinverse)

}




## cacheSolve: with the above created matrix, the function calculates

## the inverse and cache it. Any results not already in the cache will be 

## calculated and put in the cache. If a result exists in the cache a message 

## is displayed and taken to save recalculation.




cacheSolve <- function(x, ...) {

  I <- x$getinverse()

  if(!is.null(I)) {

    message("getting cached data")

    return(I)

  }

  data <- x$get()

  I <- solve(data, ...)

  x$setinverse(I)

  I

}





=======
makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) I <<- inverse 
  getinverse <- function() I
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## cacheSolve: with the above created matrix, the function calculates
## the inverse and cache it. Any results not already in the cache will be 
## calculated and put in the cache. If a result exists in the cache a message 
## is displayed and taken to save recalculation.

cacheSolve <- function(x, ...) {
  I <- x$getinverse()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setinverse(I)
  I
}


>>>>>>> 1157b61a75c8cacb776971f7fe335c40c6c6d06f
