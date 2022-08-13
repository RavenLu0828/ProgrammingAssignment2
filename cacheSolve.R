cacheSolve <- function(x, ...) {
        m<-x$getsolve()
        if(!is.null(m)){ ##check if the value has already been calculated
                message("getting cached data") ##already calculated and skip the process
                return(m)
        }
        data<-x$get() ##not already calculated start to calculate
        m<-solve(x)
        x$setsolve(m) ##get the result
        m ## Return a matrix that is the inverse of 'x'
}