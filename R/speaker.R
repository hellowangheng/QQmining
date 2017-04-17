# analyze who speak more
# '@param QQdata  the data of dataprocess's returned value
# @return the result
# @example
speaker<-function(QQdata)
{
  user<-QQdata$user
  user.n<-as.data.frame(table(user))
  user.n.20<-user.n[order(user.n[,2],decreasing=T),]
  user.n.20<-user.n.20[1:20,]
  if(requireNamespace("ggplot2",quietly=TRUE)){
    ggplot(data=user.n.20,aes(x=user,y=Freq))+
      geom_bar(stat='identity')+coord_flip()
    #coord_flip()的作用就是讲条形图这些这样90度的旋转
  }
  else{
    print("ERROR,check install the package of ggplot2!")
  }
}
