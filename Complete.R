complete <- function(directory, id=1:332)
{
  fil <- c()
  val<-c()
  for(i in id)
  {
    l<-0;
    prefix <- "";
  if (i<10)prefix <- "00"
  else if(i<100) prefix <- "0"
  path1 <- paste(directory, "\\", prefix, i, ".csv", sep="")
  data <- read.csv(path1)
  for(j in 1:nrow(data))
  {
    if(!is.na(data[j,"sulfate"])==TRUE)
    {
      if(!is.na(data[j,"nitrate"])==TRUE)
      {
        l<-l+1
      }
    }
  }
    val <- c(val,l)
   fil <- c(fil,i)
  }
  data.frame(id = fil, nobs= val)
}

