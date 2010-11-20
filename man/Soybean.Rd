\name{Soybean}
\alias{Soybean}
\docType{data}
\title{
Soybean dataset
}
\description{
There are 19 classes, only the first 15 of which have been used in
     prior work.  The folklore seems to be that the last four classes
     are unjustified by the data since they have so few examples.
     There are 35 categorical attributes, some nominal and some
     ordered. The values for
     attributes are encoded numerically, with the first value encoded
     as ``0,'' the second as ``1,'' and so forth. 
     Observations with missing values in the original dataset have been removed.}
\usage{data(Soybean)}
\format{
  A data frame with 562 observations on the following 36 variables.
  \describe{
    \item{\code{Y}}{the 19 classes}
    \item{\code{date}}{apr(0),may(1),june(2),july(3),aug(4),sept(5),oct(6)}
    \item{\code{plant.stand}}{normal(0),lt-normal(1)}
    \item{\code{precip}}{lt-norm(0),norm(1),gt-norm(2)}
    \item{\code{temp}}{lt-norm(0),norm(1),gt-norm(2)}
    \item{\code{hail}}{yes(0),no(1)}
    \item{\code{crop.hist}}{dif-lst-yr(0),s-l-y(1),s-l-2-y(2), s-l-7-y(3)}
    \item{\code{area.dam}}{scatter(0),low-area(1),upper-ar(2),whole-field(3)}
    \item{\code{sever}}{minor(0),pot-severe(1),severe(2)}
    \item{\code{seed.tmt}}{none(0),fungicide(1),other(2)}
    \item{\code{germ}}{90-100(0),80-89(1),lt-80(2)}
    \item{\code{plant.growth}}{norm(0),abnorm(1)}
    \item{\code{leaves}}{norm(0),abnorm(1)}
    \item{\code{leaf.halo}}{absent(0),yellow-halos(1),no-yellow-halos(2)}
    \item{\code{leaf.marg}}{w-s-marg(0),no-w-s-marg(1),dna(2)}
    \item{\code{leaf.size}}{lt-1/8(0),gt-1/8(1),dna(2)}
    \item{\code{leaf.shread}}{absent(0),present(1)}
    \item{\code{leaf.malf}}{absent(0),present(1)}
    \item{\code{leaf.mild}}{absent(0),upper-surf(1),lower-surf(2)}
    \item{\code{stem}}{norm(0),abnorm(1)}
    \item{\code{lodging}}{yes(0),no(1)}
    \item{\code{stem.cankers}}{absent(0),below-soil(1),above-s(2),ab-sec-nde(3)}
    \item{\code{canker.lesion}}{dna(0),brown(1),dk-brown-blk(2),tan(3)}
    \item{\code{fruiting.bodies}}{absent(0),present(1)}
    \item{\code{ext.decay}}{absent(0),firm-and-dry(1),watery(2)}
    \item{\code{mycelium}}{absent(0),present(1)}
    \item{\code{int.discolor}}{none(0),brown(1),black(2)}
    \item{\code{sclerotia}}{absent(0),present(1)}
    \item{\code{fruit.pods}}{norm(0),diseased(1),few-present(2),dna(3)}
    \item{\code{fruit.spots}}{absent(0),col(1),br-w/blk-speck(2),distort(3),dna(4)}
    \item{\code{seed}}{norm(0),abnorm(1)}
    \item{\code{mold.growth}}{ absent(0),present(1)}
    \item{\code{seed.discolor}}{absent(0),present(1)}
    \item{\code{seed.size}}{norm(0),lt-norm(1)}
    \item{\code{shriveling}}{absent(0),present(1)}
    \item{\code{roots}}{norm(0),rotted(1),galls-cysts(2)}
  }
}
\source{
 Source: R.S. Michalski and R.L. Chilausky "Learning by Being
          Told and Learning from Examples: An Experimental Comparison
          of the Two Methods of Knowledge Acquisition in the Context of
          Developing an Expert System for Soybean Disease Diagnosis",
          International Journal of Policy Analysis and Information
          Systems, Vol. 4, No. 2, 1980.

  Donor: Ming Tan & Jeff Schlimmer (Jeff.Schlimmer@cs.cmu.edu)

     These data have been taken from the UCI Repository Of Machine
     Learning Databases at

        * <URL: ftp://ftp.ics.uci.edu/pub/machine-learning-databases>

        * <URL: http://www.ics.uci.edu/~mlearn/MLRepository.html>

     and were converted to R format by Evgenia Dimitriadou, as were copied 
     from the mlbench package.
}
\references{
     Tan, M., & Eshelman, L. (1988). Using weighted networks to
     represent classification knowledge in noisy domains.  Proceedings
     of the Fifth International Conference on Machine Learning (pp.
     121-134). Ann Arbor, Michigan: Morgan Kaufmann.  - IWN recorded a
     97.1percent classification accuracy - 290 training and 340 test
     instances

     Fisher,D.H. & Schlimmer,J.C. (1988). Concept Simplification and
     Predictive Accuracy. Proceedings of the Fifth International
     Conference on Machine Learning (pp. 22-28). Ann Arbor, Michigan:
     Morgan Kaufmann.  - Notes why this database is highly predictable

     Newman, D.J. & Hettich, S. & Blake, C.L. & Merz, C.J. (1998).  UCI
     Repository of machine learning databases
     [http://www.ics.uci.edu/~mlearn/MLRepository.html]. Irvine, CA:
     University of California, Department of Information and Computer
     Science.}
\examples{
  data(Soybean)
}
\keyword{datasets}
