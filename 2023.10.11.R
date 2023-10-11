# my economic grades

myEconomicGrades<-c(100,99)

my_economic_grades<-c(100,99)

# import json file-----

jsonlite::fromJSON("data/international_flights.json")

## data information----
data1<-list(
  file="data/international_flights.json",
  meta=list(
    name="國際航空定期時刻表",
    source_link="https://data.gov.tw/dataset/161167" )
)

#data1$file
#data1$meta$name
#data1$meta$source_link

data1<-list(
  file="data/international_flights.json",
  meta=list(
    name="國際航空定期時刻表",
    source_link="https://data.gov.tw/dataset/161167")
)

flights$data[[1]] #Give me the first data's information

flights<-list(
  data=list(data1) #vector pf many data
)

#data1$filepath
#data1$title
#data1$source_link

data1<-list(
  filepath=,
  title=,
  source_link=
)


#saveRDS(something,...)

#import json-----

filepath=flights$data[[1]]$file
flightsData<-jsonlite::fromJSON(filepath)

flights$data[[1]]$data_frame<-flightsData

flights$data[[1]]$data_frame

#type and class-----

typeof(flightsData)
cladd(flightsData)

flightsData[3,"ScheduleStartDate"]
flightsData[3,2]

flightsData[c(2,4),
             c("AirlineID","ScheduleEndDate","FlightNumber")]
 
flightsData[c(2,4),c(1,3,4)]

saveRDS(flights,file="data/flights.rds")
