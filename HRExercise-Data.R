# Data

# Load data.

HRExercise <- read_csv("HRExercise.csv", 
    col_types = cols(Date = col_date(format = "%m/%d/%y"), 
        Time = col_time(format = "%T"), DateTime = col_datetime(format = "%m/%d/%y %T"), 
        Exercise = col_factor(levels = c("Yoga", "Walking", "Running", "Biking", "Trail Walking", "Trail Running", "Mountain Biking")), 
        ExerciseValue = col_factor(levels = c("0", "1", "2", "3", "4", "5", "6")), 
        Course = col_factor(levels = c("Alta Vista", 
            "Deer Hollow", "Enterprise South", 
            "Four Pass Loop", "Full Practice", 
            "Greenway", "Hawk's Ridge", "Montreat", 
            "Montreat Trails", "Restorative", 
            "Riverwalk", "Southern Soul", 
            "Stringers", "White Oak - Green", 
            "White Sands Cove", "Whole Enchilada", "Former Three")), 
        CourseValue = col_factor(levels = c("0", "1", "2", "3")),
        Zone = col_factor(levels = c("1", "2", "3", "4", "5")),
        IsYoga = col_factor(levels = c("0", "1")), 
        IsFullPractice = col_factor(levels = c("0", "1")), 
        IsSouthernSoul = col_factor(levels = c("0", "1")), 
        IsOtherYoga = col_factor(levels = c("0", "1")), 
        IsLessThan12HoursSinceLastYoga = col_factor(levels = c("0", "1")), 
        IsLessThan24HoursSinceLastYoga = col_factor(levels = c("0", "1")), 
        IsLessThan36HoursSinceLastYoga = col_factor(levels = c("0", "1")), 
        IsLessThan48HoursSinceLastYoga = col_factor(levels = c("0", "1")), 
        IsLessThan60HoursSinceLastYoga = col_factor(levels = c("0", "1")), 
        IsLessThan72HoursSinceLastYoga = col_factor(levels = c("0", "1")), 
        IsBiking = col_factor(levels = c("0", "1")), 
        IsBikingAtWhiteOakGreen = col_factor(levels = c("0", "1")), 
        IsBikingAtWholeEnchilada = col_factor(levels = c("0", "1")), 
        IsBikingAtStringers = col_factor(levels = c("0", "1")), 
        IsBikingAtRiverwalk = col_factor(levels = c("0", "1")),
        IsBikingAtGreenway = col_factor(levels = c("0", "1")),
        IsOtherBiking = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastBiking = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastBiking = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastBiking = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastBiking = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastBiking = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastBiking = col_factor(levels = c("0", "1")),
        IsWalking = col_factor(levels = c("0", "1")),
        IsWalkingAtHawksRidge = col_factor(levels = c("0", "1")),
        IsWalkingAtFourPassLoop = col_factor(levels = c("0", "1")),
        IsWalkingAtRiverwalk = col_factor(levels = c("0", "1")),
        IsOtherWalking = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastWalking = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastWalking = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastWalking = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastWalking = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastWalking = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastWalking = col_factor(levels = c("0", "1")),
        IsRunning = col_factor(levels = c("0", "1")),
        IsRunningAtHawksRidge = col_factor(levels = c("0", "1")),
        IsRunningAtStringers = col_factor(levels = c("0", "1")),
        IsRunningAtRiverwalk = col_factor(levels = c("0", "1")),
        IsOtherRunning = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastRunning = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastRunning = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastRunning = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastRunning = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastRunning = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastRunning = col_factor(levels = c("0", "1")),
        IsHawksRidge = col_factor(levels = c("0", "1")),
        IsRiverwalk = col_factor(levels = c("0", "1")),
        IsWholeEnchilada = col_factor(levels = c("0", "1")),
        IsWhiteOakGreen = col_factor(levels = c("0", "1")),
        IsStringers = col_factor(levels = c("0", "1")),
        IsZone1 = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastZone1 = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastZone1 = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastZone1 = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastZone1 = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastZone1 = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastZone1 = col_factor(levels = c("0", "1")),
        IsZone2 = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastZone2 = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastZone2 = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastZone2 = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastZone2 = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastZone2 = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastZone2 = col_factor(levels = c("0", "1")),
        IsZone3 = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastZone3 = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastZone3 = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastZone3 = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastZone3 = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastZone3 = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastZone3 = col_factor(levels = c("0", "1")),
        IsZone4 = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastZone4 = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastZone4 = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastZone4 = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastZone4 = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastZone4 = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastZone4 = col_factor(levels = c("0", "1")),
        IsZone5 = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastZone5 = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastZone5 = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastZone5 = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastZone5 = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastZone5 = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastZone5 = col_factor(levels = c("0", "1")),
        IsLessThan12HoursSinceLastAnything = col_factor(levels = c("0", "1")),
        IsLessThan24HoursSinceLastAnything = col_factor(levels = c("0", "1")),
        IsLessThan36HoursSinceLastAnything = col_factor(levels = c("0", "1")),
        IsLessThan48HoursSinceLastAnything = col_factor(levels = c("0", "1")),
        IsLessThan60HoursSinceLastAnything = col_factor(levels = c("0", "1")),
        IsLessThan72HoursSinceLastAnything = col_factor(levels = c("0", "1"))
        ))

# View the data and list any problems.

if (exists('problems')) {
  problems(HRExercise)
}

# Remove any data 

HRExercise_subset <- HRExercise
#HRExercise_subset <- subset(HRExercise, Course != "Four Pass Loop")
#HRExercise_subset <- subset(HRExercise, Exercise != "Yoga")

# Use subset?

myData <- HRExercise_subset

# Create any necessary time series data objects (based on final formula below).

lag <- 3

efficiency <- data.frame(myData$Efficiency)
efficiency_lag <- ts(data = efficiency[1:(nrow(efficiency) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
efficiency <- ts(data = efficiency[(lag + 1):(nrow(efficiency) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

bpm <- data.frame(myData$BPM)
bpm_lag <- ts(data = bpm[1:(nrow(bpm) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
bpm <- ts(data = bpm[(lag + 1):(nrow(bpm) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

caloriespermin <- data.frame(myData$CaloriesPerMin)
caloriespermin_lag <- ts(data = caloriespermin[1:(nrow(caloriespermin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
caloriespermin <- ts(data = caloriespermin[(lag + 1):(nrow(caloriespermin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

calories <- data.frame(myData$Calories)
calories_lag <- ts(data = calories[1:(nrow(calories) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
calories <- ts(data = calories[(lag + 1):(nrow(calories) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

calories_2 <- data.frame(myData$Calories)
calories_lag_2 <- ts(data = calories_2[1:(nrow(calories_2) - (lag + 1)), ], start = 1, end = nrow(myData) - (lag), frequency = 1)

timeinmin <- data.frame(myData$TimeInMin)
timeinmin_lag <- ts(data = timeinmin[1:(nrow(timeinmin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
timeinmin <- ts(data = timeinmin[(lag + 1):(nrow(timeinmin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

time <- data.frame(myData$Time)
time <- ts(data = time[(lag + 1):(nrow(time) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

elevationchangeinfeetpermin <- data.frame(myData$ElevationChangeInFeetPerMin)
elevationchangeinfeetpermin_lag <- ts(data = elevationchangeinfeetpermin[1:(nrow(elevationchangeinfeetpermin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
elevationchangeinfeetpermin <- ts(data = elevationchangeinfeetpermin[(lag + 1):(nrow(elevationchangeinfeetpermin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

elevationchangeinfeet <- data.frame(myData$ElevationChangeInFeet)
elevationchangeinfeet_lag <- ts(data = elevationchangeinfeet[1:(nrow(elevationchangeinfeet) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
elevationchangeinfeet <- ts(data = elevationchangeinfeet[(lag + 1):(nrow(elevationchangeinfeet) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

distanceinfeetpermin <- data.frame(myData$DistanceInFeetPerMin)
distanceinfeetpermin_lag <- ts(data = distanceinfeetpermin[1:(nrow(distanceinfeetpermin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
distanceinfeetpermin <- ts(data = distanceinfeetpermin[(lag + 1):(nrow(distanceinfeetpermin) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

distanceinfeet <- data.frame(myData$DistanceInFeet)
distanceinfeet_lag <- ts(data = distanceinfeet[1:(nrow(distanceinfeet) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
distanceinfeet <- ts(data = distanceinfeet[(lag + 1):(nrow(distanceinfeet) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

zone <- data.frame(myData$Zone)
zone_lag <- ts(data = zone[1:(nrow(zone) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)
zone <- ts(data = zone[(lag + 1):(nrow(zone) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

temp <- data.frame(myData$Temp)
temp <- ts(data = temp[(lag + 1):(nrow(temp) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

humidity <- data.frame(myData$Humidity)
humidity <- ts(data = humidity[(lag + 1):(nrow(humidity) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

dewpoint <- data.frame(myData$DewPoint)
dewpoint <- ts(data = dewpoint[(lag + 1):(nrow(dewpoint) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

exercise <- data.frame(myData$Exercise)
exercise <- ts(data = exercise[(lag + 1):(nrow(exercise) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

iswalking <- data.frame(myData$IsWalking)
iswalking <- ts(data = iswalking[(lag + 1):(nrow(iswalking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

isrunning <- data.frame(myData$IsRunning)
isrunning <- ts(data = isrunning[(lag + 1):(nrow(isrunning) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

isbiking <- data.frame(myData$IsBiking)
isbiking <- ts(data = isbiking[(lag + 1):(nrow(isbiking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

isyoga <- data.frame(myData$IsYoga)
isyoga <- ts(data = isyoga[(lag + 1):(nrow(isyoga) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

course <- data.frame(myData$Course)
course <- ts(data = course[(lag + 1):(nrow(course) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan12hourssincelastanything <- data.frame(myData$IsLessThan12HoursSinceLastAnything)
islessthan12hourssincelastanything <- ts(data = islessthan12hourssincelastanything[(lag + 1):(nrow(islessthan12hourssincelastanything) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan24hourssincelastanything <- data.frame(myData$IsLessThan24HoursSinceLastAnything)
islessthan24hourssincelastanything <- ts(data = islessthan24hourssincelastanything[(lag + 1):(nrow(islessthan24hourssincelastanything) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan36hourssincelastanything <- data.frame(myData$IsLessThan36HoursSinceLastAnything)
islessthan36hourssincelastanything <- ts(data = islessthan36hourssincelastanything[(lag + 1):(nrow(islessthan36hourssincelastanything) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan48hourssincelastanything <- data.frame(myData$IsLessThan48HoursSinceLastAnything)
islessthan48hourssincelastanything <- ts(data = islessthan48hourssincelastanything[(lag + 1):(nrow(islessthan48hourssincelastanything) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan12hourssincelastyoga <- data.frame(myData$IsLessThan12HoursSinceLastYoga)
islessthan12hourssincelastyoga <- ts(data = islessthan12hourssincelastyoga[(lag + 1):(nrow(islessthan12hourssincelastyoga) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan24hourssincelastyoga <- data.frame(myData$IsLessThan24HoursSinceLastYoga)
islessthan24hourssincelastyoga <- ts(data = islessthan24hourssincelastyoga[(lag + 1):(nrow(islessthan24hourssincelastyoga) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan36hourssincelastyoga <- data.frame(myData$IsLessThan36HoursSinceLastYoga)
islessthan36hourssincelastyoga <- ts(data = islessthan36hourssincelastyoga[(lag + 1):(nrow(islessthan36hourssincelastyoga) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan48hourssincelastyoga <- data.frame(myData$IsLessThan48HoursSinceLastYoga)
islessthan48hourssincelastyoga <- ts(data = islessthan48hourssincelastyoga[(lag + 1):(nrow(islessthan48hourssincelastyoga) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan24hourssincelastrunning <- data.frame(myData$IsLessThan24HoursSinceLastRunning)
islessthan24hourssincelastrunning <- ts(data = islessthan24hourssincelastrunning[(lag + 1):(nrow(islessthan24hourssincelastrunning) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan36hourssincelastrunning <- data.frame(myData$IsLessThan36HoursSinceLastRunning)
islessthan36hourssincelastrunning <- ts(data = islessthan36hourssincelastrunning[(lag + 1):(nrow(islessthan36hourssincelastrunning) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan48hourssincelastrunning <- data.frame(myData$IsLessThan48HoursSinceLastRunning)
islessthan48hourssincelastrunning <- ts(data = islessthan48hourssincelastrunning[(lag + 1):(nrow(islessthan48hourssincelastrunning) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan24hourssincelastbiking <- data.frame(myData$IsLessThan24HoursSinceLastBiking)
islessthan24hourssincelastbiking <- ts(data = islessthan24hourssincelastbiking[(lag + 1):(nrow(islessthan24hourssincelastbiking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan36hourssincelastbiking <- data.frame(myData$IsLessThan36HoursSinceLastBiking)
islessthan36hourssincelastbiking <- ts(data = islessthan36hourssincelastbiking[(lag + 1):(nrow(islessthan36hourssincelastbiking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan48hourssincelastbiking <- data.frame(myData$IsLessThan48HoursSinceLastBiking)
islessthan48hourssincelastbiking <- ts(data = islessthan48hourssincelastbiking[(lag + 1):(nrow(islessthan48hourssincelastbiking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan24hourssincelastwalking <- data.frame(myData$IsLessThan24HoursSinceLastWalking)
islessthan24hourssincelastwalking <- ts(data = islessthan24hourssincelastwalking[(lag + 1):(nrow(islessthan24hourssincelastwalking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan36hourssincelastwalking <- data.frame(myData$IsLessThan36HoursSinceLastWalking)
islessthan36hourssincelastwalking <- ts(data = islessthan36hourssincelastwalking[(lag + 1):(nrow(islessthan36hourssincelastwalking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

islessthan48hourssincelastwalking <- data.frame(myData$IsLessThan48HoursSinceLastWalking)
islessthan48hourssincelastwalking <- ts(data = islessthan48hourssincelastwalking[(lag + 1):(nrow(islessthan48hourssincelastwalking) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

southernsoul <- data.frame(myData$IsSouthernSoul)
southernsoul <- ts(data = southernsoul[(lag + 1):(nrow(southernsoul) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

wholeenchilada <- data.frame(myData$IsWholeEnchilada)
wholeenchilada <- ts(data = wholeenchilada[(lag + 1):(nrow(wholeenchilada) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

riverwalk <- data.frame(myData$IsRiverwalk)
riverwalk <- ts(data = riverwalk[(lag + 1):(nrow(riverwalk) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

hawksridge <- data.frame(myData$IsHawksRidge)
hawksridge <- ts(data = hawksridge[(lag + 1):(nrow(hawksridge) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

stringers <- data.frame(myData$IsStringers)
stringers <- ts(data = stringers[(lag + 1):(nrow(stringers) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

whiteoak <- data.frame(myData$IsWhiteOakGreen)
whiteoak <- ts(data = whiteoak[(lag + 1):(nrow(whiteoak) - lag), ], start = 1, end = nrow(myData) - lag, frequency = 1)

