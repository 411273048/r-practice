
flights<-readRDS("data/flights_week10.rds")

flightsData<-flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

#How many departure time zone?

flightsData$DepartureTimeZone|>
  table()

#Get unique time zones
unique_time_zones<-unique(flights$Data$DepartureTimeZone)

#Count the number of unique time zones
num_time_zones<-length(unique_time_zones)

#Display the number of time zones
cat("Number of time zones:",num_time_zones)

#Count observations per time zone
observations_per_time_zone<-table(flightsData)

#Display observations per time zone
cat("Observations per time zone:\n")
print(observations_per_time_zone)

## Split data frame-----

# 3. parse time with time zone
## split flightsData according to its timezone
flightsData|>split(flights$Data$DepartureTimeZone)->split_flightsData

x=1

split_flightsData[[x]]|>dplyr::glimpse()
split_flightsData[[x]]|>View()

split_flightsData[[.x]]$DepartureTime<-
  lubridate::ymd_hm(DepartureTime,
  tz = DepartureTimeZone[[1]]) # parse time
  )
dplyr::ungroup() -> # unsplit the data frame
flightsData2
    
