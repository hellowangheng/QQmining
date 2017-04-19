# dawn worrds cloud
#
# '@param QQdata  the data of dataprocess's returned value
# @return the result
# @example
#

topic<-function(QQdata)
{
  if(requireNamespace("rJava",quietly=TRUE)&requireNamespace("Rwordseg",quietly=TURE)&
     requireNamespace("dply",quietly=TURE)&requireNamespace("wordcloud2",quietly=TRUE))
  {
    text<-as.character(QQdata$message)
    text<-enc2utf8(text)
    text<-text[Encoding(text)!='unknown']
    word.message<-segmentCN(text)
    p=as.data.frame(table(unlist(word.message)))%>% arrange(desc(Freq))
    #head(p)
    wordcloud2(p)
  }
}
