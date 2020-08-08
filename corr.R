source("Complete.R")
corr <- function(directory, threshold = 0)
{
  corr_vect<- c()
  for (i in 1:332)
  {
    prefix <- "";
    if (i<10)prefix <- "00"
    else if(i<100) prefix <- "0"
    path1 <- paste(directory, "\\", prefix, i, ".csv", sep="")
    data <- read.csv(path1)
    var <- complete(directory,i)
    dat <- data[complete.cases(dat),]
    if (nrow(data) > threshold) {
      corr_vect <- c(corr_vect, cor(dat[,"sulfate"], dat[, "nitrate"]))
    }
  }
  corr_vect
}
