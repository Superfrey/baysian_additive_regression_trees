data <- data("NHANES") # load the NHANES data

str(NHANES) # show the structure of the NHANES data

data <- NHANES %>% # select the variables of interest from the NHANES data
    select("ID" ,"Gender","Age", "AgeDecade","Education","SmokeNow","BMI","HeadCirc","BPDiaAve", "BPSysAve", "Pulse","TotChol" , "Testosterone","PhysActiveDays","Poverty")

head(data) # show the first 6 rows of the data
str(data) # show the structure of the data

data <- NHANES %>% # select the variables of interest from the NHANES data
    select("ID","Age","Gender","Education","SmokeNow","BMI","BPDiaAve", "BPSysAve", "Pulse","TotChol" )
data1 <- na.omit(data) # remove rows with missing values

load("data-raw/cvd.rda") # load the cvd data
names(cvd) <- tolower(names(cvd)) # change the names of the variables to lower case
names(cvd) # show the names of the variables

data_cvd <- cvd %>% # select the variables of interest from the cvd data
    select(sex, age, smoke, drink, bmi, waist, sbp, dbp, hdlc,  hba1c) # add t2d
head(data_cvd) # show the first 6 rows of the data
str(data_cvd) # show the structure of the data



