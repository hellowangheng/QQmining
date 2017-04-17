\name{speaker}
\alias{speaker}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
analysis the people what speake more.
}
\description{
speaker(QQdata)
}
\usage{
speaker(QQdata)
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
plot a bar chart to describe  who speak more.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
heng wang
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 topic(), timepoint()
}
\examples{
#not run
root<-"C:/Users/henry wang/Documents/"
filename<-"records.txt"
QQdata<-dataprocess (root,filename)
speaker(QQdata)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
