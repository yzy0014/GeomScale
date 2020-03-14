# median #
install.packages("R.matlab")
library(R.matlab)
e_coli_core <- readMat(url("http://bigg.ucsd.edu/static/models/e_coli_core.mat"))
e_coli_core
## the e_coli_core contains many element; since I am not farmiliar with this type of data, I am not sure which one to transfer to a matrix. 
## something seems workable is:
ecolicore_mat<-unlist(e_coli_core[1])$e.coli.core426 
dim(ecolicore_mat)
head(ecolicore_mat)
## which is 6 x 137 sparse Matrix of class "dgCMatrix", Yet the matrix has 95 rows in fact, and I assume each of the
## 137 columns represent one gene?
## If we change "NA" into "0" we will have
as.matrix(ecolicore_mat)




## alternatively we can also open it from the "rjson" format, although I do not farmiliar with it....
install.packages("rjson")
# Load the package required to read JSON files.
library("rjson")
# Give the input file name to the function.
result <- fromJSON("/Users/yuanyuan/Downloads/e_coli_core.json", flatten=TRUE)
summary(result)