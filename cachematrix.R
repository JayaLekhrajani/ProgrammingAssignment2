## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
##Creating a makeCacheMatrix object will consist of four functions
#1.Set the matrix
#2.Get the matrix
#3.Set the inverse of the matrix
#4.Get the inverse of the matrix

#Insitially set inverse to NULL
inv<-NULL


#Function to set the matrix
set<-function(y){
        
        x<<-y
        inv<<-NULL
        
}

#Function to get the matrix
get<-function()x

#Set the inverse
setinverse<-function(inverse) inv<<-inverse

#Get the inverse
getinverse<-function()inv


#Encapsulate into a list
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        #Get the inverse value to check if it has been computed yet
        inv<-x$getinverse()
        
        #Get the cached value if it has been computed
        if(!is.null(inv)){
                
               messsage("Getting cached matrix")
                return(inv)
                
        }
        
        #If the inverse of the matrix hasn't been computed, get the matrix and
        #find the inverse
        
        data<-x$get()
        
        inv<-solve(data,...)
        
        #Cache the computed result in the object
        x$setinverse(inv)
        
        #Return the new result
        inv
                
        
}
