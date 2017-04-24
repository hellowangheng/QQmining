# dawn worrds cloud
#
# '@param QQdata  the data of dataprocess's returned value
# @return the result
# @example
#

topic<-function(QQdata)
{
<<<<<<< HEAD
  if(requireNamespace("rJava",quietly=TRUE)&requireNamespace("Rwordseg",quietly=TURE)&
     requireNamespace("dply",quietly=TURE)&requireNamespace("wordcloud2",quietly=TRUE))
=======
  if(requireNamespace("rJava",quietly=TRUE)&requireNamespace("Rwordseg",quietly=TRUE)&
     requireNamespace("dplyr",quietly=TRUE)&requireNamespace("wordcloud2",quietly=TRUE))
>>>>>>> e7a21eaa37f7ed0413cd504a37ba35f8bde456f4
  {
    text<-as.character(QQdata$message)
    text<-enc2utf8(text)
    text<-text[Encoding(text)!='unknown']
<<<<<<< HEAD
    word.message<-segmentCN(text)
    p=as.data.frame(table(unlist(word.message)))%>% arrange(desc(Freq))
    #head(p)
    wordcloud2(p)
=======
    word.message<-Rwordseg::segmentCN(text)
    p=as.data.frame(table(unlist(word.message)))%>% arrange(desc(Freq))
    wordcloud2::wordcloud2(p)
>>>>>>> e7a21eaa37f7ed0413cd504a37ba35f8bde456f4
  }
}
