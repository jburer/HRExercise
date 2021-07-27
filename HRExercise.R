library(readr)
HR_Exercise_Training <- read_csv("HRExercise.csv", 
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
            "White Sands Cove", "Whole Enchilada")), 
        CourseValue = col_factor(levels = c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15")),
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
View(HR_Exercise_Training)


Alta Vista,Deer Hollow,Enterprise South,Four Pass Loop,Full Practice,Greenway,Hawk's Ridge,Montreat,Montreat Trails,Restorative,Riverwalk,Southern Soul,Stringers,White Oak - Green,White Sands Cove,Whole Enchilada


```{r}
crit$confint
#crit1$confint
#crit2$confint
#crit3$confint
crit4$confint
#crit5$confint
crit6$confint
crit7$confint
crit8$confint
crit9$confint
#crit10$confint
#crit11$confint
crit12$confint
crit13$confint
crit14$confint
crit15$confint
crit16$confint
crit17$confint
crit18$confint
crit19$confint
crit20$confint
crit21$confint
crit22$confint
crit23$confint
crit24$confint
crit25$confint
crit26$confint

```{r}
crit$R2
#crit1$R2
#crit2$R2
#crit3$R2
crit4$R2
#crit5$R2
crit6$R2
crit7$R2
crit8$R2
crit9$R2
#crit10$R2
#crit11$R2
crit12$R2
crit13$R2
crit14$R2
crit15$R2
crit16$R2
crit17$R2
crit18$R2
crit19$R2
crit20$R2
crit21$R2
crit22$R2
crit23$R2
crit24$R2
crit25$R2
crit26$R2

crit$Se
#crit1$Se
#crit2$Se
#crit3$Se
crit4$Se
#crit5$Se
crit6$Se
crit7$Se
crit8$Se
crit9$Se
#crit10$Se
#crit11$Se
crit12$Se
crit13$Se
crit14$Se
crit15$Se
crit16$Se
crit17$Se
crit18$Se
crit19$Se
crit20$Se
crit21$Se
crit22$Se
crit23$Se
crit24$Se
crit25$Se
crit26$Se

crit$residual_plot
#crit1$residual_plot
#crit2$residual_plot
#crit3$residual_plot
crit4$residual_plot
#crit5$residual_plot
crit6$residual_plot
crit7$residual_plot
crit8$residual_plot
crit9$residual_plot
#crit10$residual_plot
#crit11$residual_plot
crit12$residual_plot
crit13$residual_plot
crit14$residual_plot
crit15$residual_plot
crit16$residual_plot
crit17$residual_plot
crit18$residual_plot
crit19$residual_plot
crit20$residual_plot
crit21$residual_plot
crit22$residual_plot
crit23$residual_plot
crit24$residual_plot
crit25$residual_plot
crit26$residual_plot

crit$residual_histogram
#crit1$residual_histogram
#crit2$residual_histogram
#crit3$residual_histogram
crit4$residual_histogram
#crit5$residual_histogram
crit6$residual_histogram
crit7$residual_histogram
crit8$residual_histogram
crit9$residual_histogram
#crit10$residual_histogram
#crit11$residual_histogram
crit12$residual_histogram
crit13$residual_histogram
crit14$residual_histogram
crit15$residual_histogram
crit16$residual_histogram
crit17$residual_histogram
crit18$residual_histogram
crit19$residual_histogram
crit20$residual_histogram
crit21$residual_histogram
crit22$residual_histogram
crit23$residual_histogram
crit24$residual_histogram
crit25$residual_histogram
crit26$residual_histogram

fit <- lm(sale_price ~ above, data = homes)
#fit1 <- lm(BPM ~ Exercise, data = HR_Exercise_Training)
#fit2 <- lm(BPM ~ TimeInMin, data = HR_Exercise_Training)
#fit3 <- lm(BPM ~ Course, data = HR_Exercise_Training)
fit4 <- lm(BPM ~ Calories, data = HR_Exercise_Training)
#fit5 <- lm(BPM ~ Zone, data = HR_Exercise_Training)
fit6 <- lm(BPM ~ Miles, data = HR_Exercise_Training)
fit7 <- lm(BPM ~ MilesPerHour, data = HR_Exercise_Training)
fit8 <- lm(BPM ~ ElevationChangeInFeet, data = HR_Exercise_Training)
fit9 <- lm(BPM ~ Temp, data = HR_Exercise_Training)
#fit10 <- lm(BPM ~ Humidity, data = HR_Exercise_Training)
#fit11 <- lm(BPM ~ DewPoint, data = HR_Exercise_Training)
fit12 <- lm(BPM ~ DistanceInFeet, data = HR_Exercise_Training)
fit13 <- lm(BPM ~ DistanceInFeetPerMin, data = HR_Exercise_Training)
fit14 <- lm(BPM ~ DistanceInMeters, data = HR_Exercise_Training)
fit15 <- lm(BPM ~ DistanceInMetersPerMin, data = HR_Exercise_Training)
fit16 <- lm(BPM ~ ElevationChangeInFeetPerFoot, data = HR_Exercise_Training)
fit17 <- lm(BPM ~ ElevationChangeInFeetPerMin, data = HR_Exercise_Training)
fit18 <- lm(BPM ~ ElevationChangeInMeters, data = HR_Exercise_Training)
fit19 <- lm(BPM ~ ElevationChangeInMetersPerMeter, data = HR_Exercise_Training)
fit20 <- lm(BPM ~ ElevationChangeInMetersPerMin, data = HR_Exercise_Training)
fit21 <- lm(BPM ~ CaloriesPerMin, data = HR_Exercise_Training)
fit22 <- lm(BPM ~ CaloriesPerFoot, data = HR_Exercise_Training)
fit23 <- lm(BPM ~ CaloriesPerMeter, data = HR_Exercise_Training)
fit24 <- lm(BPM ~ Work, data = HR_Exercise_Training)
fit25 <- lm(BPM ~ WorkPerMeter, data = HR_Exercise_Training)
fit26 <- lm(BPM ~ WorkPerMin, data = HR_Exercise_Training)

Calories + Miles + MilesPerHour + ElevationChangeInFeet + Temp + DistanceInFeet + 
DistanceInFeetPerMin + ElevationChangeInFeetPerFoot + ElevationChangeInFeetPerMin +
CaloriesPerMin + CaloriesPerFoot +
Work + WorkPerMin

fit_some <- lm(Growth ~ TimeInMin + Temp + Humidity + DewPoint 
+ BPM + MaxBPM
+ Calories + CaloriesPerMin + CaloriesPerFoot
+ IsZone1 + IsLessThan12HoursSinceLastZone1 + IsLessThan24HoursSinceLastZone1 + IsLessThan36HoursSinceLastZone1 + IsLessThan48HoursSinceLastZone1 + IsLessThan60HoursSinceLastZone1 + IsLessThan72HoursSinceLastZone1
+ IsZone2 + IsLessThan12HoursSinceLastZone2 + IsLessThan24HoursSinceLastZone2 + IsLessThan36HoursSinceLastZone2 + IsLessThan48HoursSinceLastZone2 + IsLessThan60HoursSinceLastZone2 + IsLessThan72HoursSinceLastZone2
+ IsZone3 + IsLessThan12HoursSinceLastZone3 + IsLessThan24HoursSinceLastZone3 + IsLessThan36HoursSinceLastZone3 + IsLessThan48HoursSinceLastZone3 + IsLessThan60HoursSinceLastZone3 + IsLessThan72HoursSinceLastZone3 
+ IsZone4 + IsLessThan12HoursSinceLastZone4 + IsLessThan24HoursSinceLastZone4 + IsLessThan36HoursSinceLastZone4 + IsLessThan48HoursSinceLastZone4 + IsLessThan60HoursSinceLastZone4 + IsLessThan72HoursSinceLastZone4 
+ IsZone5 + IsLessThan12HoursSinceLastZone5 + IsLessThan24HoursSinceLastZone5 + IsLessThan36HoursSinceLastZone5 + IsLessThan48HoursSinceLastZone5 + IsLessThan60HoursSinceLastZone5 + IsLessThan72HoursSinceLastZone5
+ IsLessThan12HoursSinceLastAnything + IsLessThan24HoursSinceLastAnything + IsLessThan36HoursSinceLastAnything +IsLessThan48HoursSinceLastAnything + IsLessThan60HoursSinceLastAnything + IsLessThan72HoursSinceLastAnything
+ ExerciseValue
+ IsYoga + IsLessThan12HoursSinceLastYoga + IsLessThan24HoursSinceLastYoga + IsLessThan36HoursSinceLastYoga + IsLessThan48HoursSinceLastYoga + IsLessThan60HoursSinceLastYoga + IsLessThan72HoursSinceLastYoga
+ IsRunning + IsLessThan12HoursSinceLastRunning + IsLessThan24HoursSinceLastRunning + IsLessThan36HoursSinceLastRunning + IsLessThan48HoursSinceLastRunning + IsLessThan60HoursSinceLastRunning + IsLessThan72HoursSinceLastRunning
+ IsWalking + IsLessThan12HoursSinceLastWalking + IsLessThan24HoursSinceLastWalking + IsLessThan36HoursSinceLastWalking + IsLessThan48HoursSinceLastWalking + IsLessThan60HoursSinceLastWalking + IsLessThan72HoursSinceLastWalking
+ IsBiking + IsLessThan12HoursSinceLastBiking + IsLessThan24HoursSinceLastBiking + IsLessThan36HoursSinceLastBiking + IsLessThan48HoursSinceLastBiking + IsLessThan60HoursSinceLastBiking + IsLessThan72HoursSinceLastBiking
+ CourseValue
+ IsFullPractice + IsSouthernSoul + IsOtherYoga
+ IsHawksRidge + IsRiverwalk + IsStringers
+ IsBikingAtWhiteOakGreen + IsBikingAtWholeEnchilada + IsBikingAtStringers + IsBikingAtRiverwalk + IsBikingAtGreenway + IsOtherBiking
+ IsWalkingAtHawksRidge + IsWalkingAtFourPassLoop + IsWalkingAtRiverwalk + IsOtherWalking
+ IsRunningAtHawksRidge + IsRunningAtStringers + IsRunningAtRiverwalk + IsOtherRunning
, data = HR_Exercise_Training)

fit_some <- lm(Growth ~ TimeInMin + Temp + Humidity + DewPoint 
+ BPM + MaxBPM
+ Calories + CaloriesPerMin + CaloriesPerFoot
+ IsLessThan12HoursSinceLastZone1 + IsLessThan24HoursSinceLastZone1 + IsLessThan36HoursSinceLastZone1 +IsLessThan48HoursSinceLastZone1 + IsLessThan60HoursSinceLastZone1 + IsLessThan72HoursSinceLastZone1
+ IsZone2 + IsLessThan12HoursSinceLastZone2 + IsLessThan24HoursSinceLastZone2 + IsLessThan36HoursSinceLastZone2 +IsLessThan48HoursSinceLastZone2 + IsLessThan60HoursSinceLastZone2
+ IsZone3 + IsLessThan24HoursSinceLastZone3 + IsLessThan36HoursSinceLastZone3 + IsLessThan48HoursSinceLastZone3 + IsLessThan72HoursSinceLastZone3 
+ IsZone4 + IsLessThan24HoursSinceLastZone4 + IsLessThan36HoursSinceLastZone4 + IsLessThan48HoursSinceLastZone4 + IsLessThan72HoursSinceLastZone4 
+ IsZone5
+ IsLessThan12HoursSinceLastAnything + IsLessThan24HoursSinceLastAnything + IsLessThan36HoursSinceLastAnything +IsLessThan48HoursSinceLastAnything + IsLessThan60HoursSinceLastAnything + IsLessThan72HoursSinceLastAnything
+ ExerciseValue
+ IsLessThan24HoursSinceLastYoga + IsLessThan36HoursSinceLastYoga + IsLessThan48HoursSinceLastYoga + IsLessThan60HoursSinceLastYoga
+ IsRunning + IsLessThan60HoursSinceLastRunning + IsLessThan72HoursSinceLastRunning
+ IsWalking + IsLessThan24HoursSinceLastWalking + IsLessThan36HoursSinceLastWalking + IsLessThan48HoursSinceLastWalking + IsLessThan60HoursSinceLastWalking + IsLessThan72HoursSinceLastWalking
+ IsBiking + IsLessThan24HoursSinceLastBiking + IsLessThan36HoursSinceLastBiking + IsLessThan48HoursSinceLastBiking + IsLessThan60HoursSinceLastBiking + IsLessThan72HoursSinceLastBiking
+ CourseValue
+ IsFullPractice + IsSouthernSoul
+ IsHawksRidge + IsRiverwalk + IsStringers
+ IsBikingAtWhiteOakGreen + IsBikingAtWholeEnchilada + IsBikingAtStringers + IsBikingAtRiverwalk + IsBikingAtGreenway
+ IsWalkingAtHawksRidge + IsWalkingAtRiverwalk
, data = HR_Exercise_Training)

