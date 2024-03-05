data(warpbreaks)
head(warpbreaks)
lines <- readLines("exampleFile.txt")
#A.Load the built-in warpbreaks



#1.Find out, in a single command, which columns of warpbreaks are either numeric or integer.
numeric_or_integer <- sapply(warpbreaks, function(x) is.numeric(x) || is.integer(x))
print(numeric_or_integer)

#2.Is numeric a natural data type for the columns which are stored as such? Convert tointeger when necessary.
warpbreaks$breaks <- as.integer(warpbreaks$breaks)
str(warpbreaks$breaks)

#3.Error messages in R sometimes report the underlying type of an object rather than theuser-level class. Derive from the following code and error message what theunderlying type.
sum_warpbreaks <- sum(warpbreaks)
#Error because it's only defined on a data frame with all numeric-alike variables



#B.Load the exampleFile.txt
#1.Read the complete file using readLines.
textfile<-readLines('exampleFile.txt')

#2.Separate the vector of lines into a vector containing comments and a vector containing the data. Hint: use grepl.
lines_from_text <-c(
  "// Survey data. Created : 21 May 2013",
  "// Field 1: Gender",
 "// Field 2: Age (in years)",
  "// Field 3: Weight (in kg)",
  "M;28;81.3",
  "male;45;",
  "Female;17;57,2",
  "fem.;64;62.8"
)

identify_comments<-Linesfromtxt[grepl("^//",lines_from_text)]
identify_data<-Linesfromtxt[!grepl("^//",lines_from_text)]
print("Comments")
print(identify_comments)

#3.Extract the date from the first comment line.
install.packages("lubridate")
library(lubridate)

