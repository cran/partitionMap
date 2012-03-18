\name{partitionMap}
\alias{partitionMap}
\title{
Partition Maps
}
\description{
   using Random Forest multiclass output, 
   embed observations in low-dimensional space
}
\usage{
partitionMap(X, Y, XTEST = NULL, YTEST = NULL,  method = "pm", dimen = 2, 
                   force = TRUE, ntree = 100,
                   plottrain = TRUE, addjitter = 0.03, ...)
}
\arguments{
  \item{X}{
  matrix with predictor variables in the training dataset
}
  \item{Y}{
  response variable, a factor with multiple classes
}
  \item{XTEST}{
  The matrix of predictor variables for the test dataset (optional)
}
 \item{YTEST}{
  Class labels of test observations, used for coloring the test embeddings in the plot.
  If not supplied, test observations are shwon in grey (optional)
}
  \item{method}{
  \code{pm} for "partitonMap" and \code{ha} for "Homogeneity Analysis"
}
  \item{dimen}{
  dimension of embedding, typically 2 or 3
}
  \item{force}{
   use force-based variation of "partitionMap" algorithm? 
   no effect if \code{method="ha"}
}
  \item{ntree}{
  number of trees to use for randomForest prediction
}
  \item{plottrain}{
  plot embedding for training data?
}
 \item{addjitter}{
  amount if jitter to add to the plots to avoid overlapping observations 
  (set \code{addjitter=0} for no jitter)
}
  \item{...}{
   other arguments to be passed to randomForest 
}
}

\value{
A list with values
  \item{Samples }{low-dimensional co-ordinates 
                  of embedded training samples}
  \item{Rules }{low-dimensional co-ordinates of 
                embedded Rules (nodes in the trees)}
  \item{Z }{a binary matrix, with as many rows as training samples 
            and as many columns as rules.  
            a value \code{1} in row i and column j indicates 
            that observation i is part of rule j}
   \item{Samplestest }{low-dimensional co-ordinates of embedded test samples}
   \item{Ztest }{a binary matrix, with as many rows as test samples 
                 and as many columns as rules.  
                 a value \code{1} in row i and column j indicates 
                 that observation i in the test data is part of rule j}
   \item{rf }{the trained Random Forest classifier}
}
\references{
   Nicolai Meinshausen (2011)

   Partition Maps 

   JCGS 20(4), 1007-1028 
}
\author{
Nicolai Meinshausen <meinshausen@stats.ox.ac.uk>
}

\examples{
	
##---- load Soybean data ----
	data(Soybean)
	X <- Soybean[,-1]
	Y <- Soybean$Y 
	
##---- divide into training and test data ----
	indtrain <- rep(0,nrow(X))
	indtrain[sample(1:length(indtrain), ceiling(nrow(X)/3*2))] <- 1
	XTEST <- X[indtrain==0,]
	YTEST <- Y[indtrain==0]
	X <- X[indtrain==1,]
	Y <- Y[indtrain==1]


##---- compute Partition Map solution ----
	pm <- partitionMap(X,Y,XTEST=XTEST,method="pm",force=TRUE,
                                dimen=2,ntree=80,plottrain=TRUE)


##---- plot the embedded training and test samples ----
	par(mfrow=c(1,3))
	plot(pm$Samples,col=Y,pch=20,cex=1.5,main="Training Data",
                                    xlab="Dimension 1",ylab="Dimension 2")
	points(pm$Rules,pch=".")
	plot(pm$Samplestest,col=YTEST,pch=20,cex=1.5,main="Test Data",
                                     xlab="Dimension 1",ylab="Dimension 2")
	points(pm$Rules,pch=".")
	plot(pm$Samples,col=Y,pch=20,cex=1.5,xlab="",ylab="",type="n",axes=FALSE)
	legend(quantile(pm$Samples[,1],0),quantile(pm$Samples[,2],1),unique(Y),
                              col=1:length(unique(Y)),fill=1:length(unique(Y)),border=0)
	par(mfrow=c(1,1))
}

