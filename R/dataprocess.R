# process the data
#
# '@param root
# '@param filename
#
# @return the result
# @example
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
dataprocess <- function(root,filename) {
  file<-paste(root,filename,sep="")
  file.data<-scan(file,what = "",sep="\n",encoding = "UTF-8")
  file.data<-file.data[-1:-5]
  time <- c();
  user <- c();
  message <- c();
  data<-data.frame(user=c(),time=c(),message=c())

  for(i in 1:length(file.data))
  {
    reglog <- regexpr('[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]+:[0-9]+:[0-9]+',file.data[i])
    if(reglog[1]==1)
    {
      time[i] <- substr(file.data[i],1,19)
      user[i] <- substr(file.data[i],21,nchar(file.data[i]))
    }
    else
    {
      message[i] <- file.data[i]
    }
  }

  data<- data.frame(time=time,user=user,message=message[-1])
  for(i in 1:dim(data)[1])
    if(is.na(data[i,1]))
    {
      if(is.na(data[i,2]))
      {
        if(is.na(data[i,3]))
        {
          data<- data[-i,]
        }
      }
    }
  QQdata<-data
  return(QQdata)
  #head(data)
}
