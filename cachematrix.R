## This script can be used to find the inverse of a matrix
## assuming the matrix is square invertible

## makeCacheMatrix is used to set and get values (and inverse)
## a matrix

makeCacheMatrix <- function(x = matrix()) {
	matrixIverse <- NULL
	setMatrix <- function(inputMatrix){
			x <<- inputMatrix
			matrixInverse <<- NULL
		}
	getMatrix <- function()	x
	setInverse <- function(invMat)matrixInverse <<- invMat
	getInverse <- function() matrixInverse
	list(set = setMatrix, get = getMatrix,
             setInv = setInverse,
             getInv = getInverse)
}


## cacheSolve returns the inverse of a matrix. It retrieves
## the inverse from the cache if previously computed

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	   matInverse <- x$getInv()
	   if (!is.null(matInverse)){
		message("Getting Cached Data")
		return(matInverse)
		}
	    matrixData <- x$get()
	    invMat <- solve(matrixData)	
	    x$setInv(invMat)
	    invMat		    
}
