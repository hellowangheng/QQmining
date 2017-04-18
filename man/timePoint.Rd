\name{timePoint}
\alias{timePoint}
\title{
 timePoint
}
\description{
annilyse time point
}
\usage{
timePoint(QQdata)
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
using ggplot2 plot a bar chart about time when people talked.
}
\references{
speaker(), topic()
}
\author{
heng wang
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
#not run
root<-"C:/Users/henry wang/Documents/"
filename<-"records.txt"
QQdata<-dataprocess (root,filename)
timePoint(QQdata)

## The function is currently defined as
function (x)
{
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
