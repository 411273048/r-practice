# Creating a vector of numbers
numbers <- c(1, 2, 3, 4, 5)

# to print each value

print(numbers[[1]])
print(numbers[[2]])
print(numbers[[3]])
print(numbers[[4]])
print(numbers[[5]])

# pattern
# x from 1 to 5

for(xy in c(1,2,3,4,5))
{
  print(numbers[[xy]])
}

for(.x in 1:howManyTimes)
{
  print(x)
}

dataSet <- list (
  list(
    gender="male", height=178, age=32,
    children=list(
      list(gender="male", age=5),
      list(gender="male", age=0))
  ),
  list(
    gender="female", height=166, age=30,
    children=list(
      list(gender="female", age=3))
  ),
  list(
    gender="male", height=170, age=42,
    children=list(
      list(gender="male", age=10),
      list(gender="female", age=8))
  ),
  list(
    gender="male", height=188, age=22,
    children=list()
  ),  
  list(
    gender="male", height=172, age=52,
    children=list(
      list(gender="female", age=25),
      list(gender="female", age=23))
  ),
  list(
    gender="female", height=160, age=42,
    children=list(
      list(gender="female", age=11))
  )
)

# pattern
howManyTimes=length(dataSet)
for(.x in 1:howManyTimes)
{
  print(length(dataSet[[y]]$children))
}


# example

  