## Found on web article posted by: xmuxiaomo


#load up matrix
>my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))

#get loaded matrix.
> my_matrix$get()

#attempt to get the inverted matrix (has not been calculated yet), will return NULL>
> my_matrix$getInverse()

#call the cacheSolve method, solves but not cached yet.
> cacheSolve(my_matrix)

#call again, solve is not called, but the cached version is returned.
> cacheSolve(my_matrix)

#get the cached inverse as called by m_matrix
> my_matrix$getInverse()

#iuse the set method.
> my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))


#repeat the above steps.
> my_matrix$get()
> my_matrix$getInverse()
> cacheSolve(my_matrix)
