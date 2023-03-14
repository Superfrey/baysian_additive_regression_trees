data <- data("NHANES")
str(NHANES)
data <- NHANES %>%
    select("ID" ,"Gender","Age", "AgeDecade","Education","SmokeNow","BMI","HeadCirc","BPDiaAve", "BPSysAve", "Pulse","TotChol" , "Testosterone","PhysActiveDays","Poverty")

head(data)
str(data)

data <- NHANES %>%
    select("ID","Age","Gender","Education","SmokeNow","BMI","BPDiaAve", "BPSysAve", "Pulse","TotChol" )
data1 <- na.omit(data)

load("data-raw/cvd.rda")
names(cvd) <- tolower(names(cvd))
names(cvd)

data_cvd <- cvd %>%
    select(sex, age, smoke, drink, bmi, waist, sbp, dbp, hdlc,  hba1c) # add t2d
head(data_cvd)
str(data_cvd)

