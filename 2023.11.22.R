# demo data 
flightsData <- data.frame(
  ScheduleStartDate = lubridate::ymd(c("2023-10-10", "2023-10-09")),
  DepartureTime = c("10:00+1","12:20"),
  DepartureTimeZone = c("Asia/Bangkok", "Asia/Taipei")
)
dplyr::glimpse(flightsData)

# week 8
whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE) # fixed=TRUE, not treating "+1" as REGEX

departureDate <- flightsData$ScheduleStartDate # create departureDate object
departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1) # element values replacement

# before
flightsData$ScheduleStartDate
# after
departureDate 

# week 9
departureTimeString <- flightsData$DepartureTime
# remove "+1" at the end
departureTimeString <- flightsData$DepartureTime
departureTimeString <- sub("+1", "", departureTimeString, fixed = T) # find "+1" pattern and replace it with ""

departureTime <- paste(departureDate, departureTimeString)
flightsData$DepartureTime <- departureTime 

departureTimeString
departureTime
flightsData$DepartureTime

# week 10
flightsData |>
  dplyr::group_by(DepartureTimeZone) |>
  dplyr::mutate(
    DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
  ) |>
  dplyr::ungroup() -> flightsData_new

dplyr::glimpse(flightsData_new)
dplyr::glimpse(flightsData)

# Programming block------
# demo data 
flightsData <- data.frame(
  ScheduleStartDate = lubridate::ymd(c("2023-10-10", "2023-10-09")),
  DepartureTime = c("10:00+1","12:20"),
  DepartureTimeZone = c("Asia/Bangkok", "Asia/Taipei")
)
dplyr::glimpse(flightsData)
{
  # week 8
  whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE) # fixed=TRUE, not treating "+1" as REGEX
  
  departureDate <- flightsData$ScheduleStartDate # create departureDate object
  departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1) # element values replacement
  # week 9
  departureTimeString <- flightsData$DepartureTime
  # remove "+1" at the end
  departureTimeString <- flightsData$DepartureTime
  departureTimeString <- sub("+1", "", departureTimeString, fixed = T) # find "+1" pattern and replace it with ""
  
  departureTime <- paste(departureDate, departureTimeString)
  flightsData$DepartureTime <- departureTime 
  
  # week 10
  flightsData |>
    dplyr::group_by(DepartureTimeZone) |>
    dplyr::mutate(
      DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
    ) |>
    dplyr::ungroup() -> flightsData_new
  
  flightsData_new
  } ->A

## example1

# mini example
{
  # Perform some operations or calculations
  x <- 10
  y <- 20
  result <- x + y
  
} -> output

output

## example2

output2 = {
  # Perform some operations or calculations
  x <- 10
  y <- 20
  result <- x + y
}

output2

## example3
output3 <- {
  # Perform some operations or calculations
  x <- 10
  y <- 20
  if (x < 20) {
    result <- x + y
  } else {
    result <- 70
  }
}
output3


flightsData <- data.frame(
  ScheduleStartDate = lubridate::ymd(c("2023-10-10", "2023-10-09")),
  DepartureTime = c("10:00+1", "12:20"),
  DepartureTimeZone = c("Asia/Bangkok", "Asia/Taipei")
)

flightsData

{
  # week 8
  whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE) # fixed=TRUE, not treating "+1" as REGEX
  
  departureDate <- flightsData$ScheduleStartDate # create departureDate object
  departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1) # element values replacement
  
  # week 9
  departureTimeString <- flightsData$DepartureTime
  # remove "+1" at the end
  departureTimeString <- flightsData$DepartureTime
  departureTimeString <- sub("+1", "", departureTimeString, fixed = T) # find "+1" pattern and replace it with ""
  
  departureTime <- paste(departureDate, departureTimeString)
  flightsData$DepartureTime <- departureTime
  
  # week 10
  flightsData |>
    dplyr::group_by(DepartureTimeZone) |>
    dplyr::mutate(
      DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
    ) |>
    dplyr::ungroup() -> flightsData_new
  
  flightsData_new
}


# sum odd index values
fullValues <- c(45.4, 44.8, 37.3, 37.9, 28, 11.8, 39.7, 18.4, 41.2, 29.8, 1, 
                44.2)

sum(fullValues[c(1,3,5,7,9,11)])
seq(1,12,2)
odd_indices<-seq(1,12,2)
sum(fullValues[odd_indices])


# put object name to be substituted in your function input argument
myfun<-function(fullValues){
  odd_indices <- seq(1, length(fullValues), 2)
  sum_odd <- sum(fullValues[odd_indices])
  sum_odd
} 

fullValues2 <- c(13.6, 31.9, 3.4, 7, 21.7, 45.4, 19.3, 24.7, 10.3, 14.8, 29.2, 12.1)

myfun(fullValues2)

fullValues3<-c(1,22,787,278,12)
myfun(fullValues3)

myfun2<-function(x,w){
  # x,z,y,w
  
  
}
myfun2(obj1,obj2)



myfun3<-function(increment){
  odd_indices <- seq(1, length(fullValues), increment)
  sum_odd <- sum(fullValues[odd_indices])
  sum_odd
}

myfun3(fullValues, 2)
myfun3(fullValues, 3)

myfun3(fullValues2, 2)
myfun3(fullValues2, 3)

myfun2 <- function(fullValues, increment){ # increment is an input argument
  odd_indices <- seq(1, length(fullValues), increment) # repace 2 with increment object name
  sum_odd <- sum(fullValues[odd_indices])
  cat(sum_odd)
  return(sum_odd) # print on screen without return value
}

result <- myfun2(fullValues2, 2)
result

parse_departureTime <- function(flightsData){
  # week 8
  whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE) # fixed=TRUE, not treating "+1" as REGEX
  
  departureDate <- flightsData$ScheduleStartDate # create departureDate object
  departureDate[whichNeedPlus1] <- departureDate[whichNeedPlus1] + lubridate::days(1) # element values replacement
  
  # week 9
  departureTimeString <- flightsData$DepartureTime
  # remove "+1" at the end
  departureTimeString <- flightsData$DepartureTime
  departureTimeString <- sub("+1", "", departureTimeString, fixed = T) # find "+1" pattern and replace it with ""
  
  departureTime <- paste(departureDate, departureTimeString)
  flightsData$DepartureTime <- departureTime
  
  # week 10
  flightsData |>
    dplyr::group_by(DepartureTimeZone) |>
    dplyr::mutate(
      DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
    ) |>
    dplyr::ungroup() -> flightsData_new
  
  flightsData_new
}

flightsData2 <- data.frame(
  ScheduleStartDate = lubridate::ymd(c("2023-11-10", "2023-11-19")),
  DepartureTime = c("10:00+1","12:20+1"),
  DepartureTimeZone = c("Asia/Bangkok", "Asia/Taipei")
)

flightsData2
parse_departureTime(flightsData2)

flightsData2

flights<-readRDS("data/flights_week11.rds")
flightsData<-flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

library(dplyr)

# select relevant columns
flightsData |>
  select(ScheduleStartDate, ArrivalTime, ArrivalTimeZone) -> flightsData_selected

glimpse(flightsData_selected)

names(flightsData_selected)[c(2,3)]
# rename for parse_departureTime function to work
names(flightsData_selected)[c(2,3)] <- c("DepartureTime", "DepartureTimeZone")

#names(flightsData_selected) <-c("names1","names2","names3")
flightsData_selected2
parse_departureTime(flightsData_selected)->flightsData_selected2

glimpse(flightsData_selected)
glimpse(flightsData_selected2)

flightsData[,c("ArriveTime","ArriveTimeZone")]<-
  flightsData_selected2[,c("DepatureTime","DepatureTimeZone")]

glimpse(flightsData)