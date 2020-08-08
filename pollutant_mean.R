pollutantmean <- function(directory, pollutant, id=1:332)
{
  sum1 <-0
  len1 <-0
  for (i in id)
  {
    prefix <- "";
    if (i<10)prefix <- "00"
    else if(i<100) prefix <- "0"
    
    path <- paste(directory, "\\", prefix, i, ".csv", sep="")
    ## print(path)
    data <- read.csv(path) 
    sub1 <- data[pollutant]
    val <- sub1[!is.na(sub1)]
    len <- len + length(val)
    sum1 <- sum1 + sum(val)
  }
  sum1/len
}



