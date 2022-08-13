makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){ ##set the value
                x<<-y
                m<<-NULL
        }
        get<-function()x ##get the value
        setsolve<-function(slove)m<<-solve ##set the value of matrix inversion
        getsolve<-function()m ##get the value of matrix inversion
        list(set=set,
             get=get,
             setsolve=setsolve,
             getsolve=getsolve)
}