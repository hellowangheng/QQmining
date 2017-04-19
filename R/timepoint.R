# analyze the time when person usully talking
#
# '@param QQdata  the data of dataprocess's returned value
# @return the result
# @example
timepoint<-function(QQdata)
{
  user.time<-QQdata$time
  user.time<-as.character(user.time)
  user.time.h<-c()
  for(i in 1:length(user.time))
  {
    user.time.h[i]<-substr(user.time[i],12,19)
  }
  user.time.h<- as.POSIXct(user.time.h,format = "%H:%M:%S")   #hour minitue second
  hour <- format(user.time.h,"%H")   #hour
  hour <- as.data.frame(table(hour))
  if(requireNamespace("ggplot2",quietly=TRUE)){
    ggplot(data=hour,aes(x = hour,y = Freq,group = 1)) +
      geom_bar(stat = 'identity')+geom_line(color="red");
  }
else{
    print("ERROR,check install the package of ggplot2!")
  }
}
