vector_Data <- c(10, 20, 30)
vector_Data

#Slice Data Assigned
matrix_Data <- matrix(c(1:9), nrow = 3, ncol = 3)
matrix_Data

#Create List
my_List <- list(a=1, b=2, c=3)
my_List

# Access the Element & Update
matrix_Data[2,3]
matrix_Data[3,3] <- 10

#Vector Access & Update
vector_Data[2]
vector_Data[2] <- 50

# Create two list & merge the list
my_list2 <- list(a=5)
you_list <- list(b=10)
merge_list <- c(my_list2, you_list)
merge_list

# Vector Data Merge & Update
vector_Data2 <- c(40, 50, 60)
vector_Data3 <- c(vector_Data, vector_Data2)
vector_Data3
