\name{topic}
\alias{topic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
analiyse the topic.
}
\description{
topic()
}
\usage{
topic(QQdata)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{QQdata}{
QQdata is the reeturned valua of dataprocess()
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
using the wordcloud2 to plot a wordcloud to describe  what they usully talk.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Heng Wang
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#not run
root<-"C:/Users/henry wang/Documents/"
filename<-"records.txt"
QQdata<-dataprocess (root,filename)
topic(QQdata)
}
