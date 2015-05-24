# This function creates a list which contains another function which sets the value of matrix, fetches the value of matrix,  sets the value of inverse of matrix and fetches the value of inverse of matrix.
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y {
			inv <<- NULL
			}
		}
		get <- function() x
		setinverse <- function(inverse) inv <<- inverse
		getinverse <- function() inv
}
This function ensures if the inverse was already computed or not. If inverse was computed, it will get the result and will not compute. If inverse wsa not computed, it will do so.

cacheSolve <- function(x, ...) {
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message("getting cached data.")
		return(inv)
		}
		data <- x$get()
		inv <- solve(data)
		x$setinverse(inv)
		inv
	}

