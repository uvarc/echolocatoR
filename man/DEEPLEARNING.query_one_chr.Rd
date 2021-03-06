% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Dey_DeepLearning.R
\name{DEEPLEARNING.query_one_chr}
\alias{DEEPLEARNING.query_one_chr}
\title{Query deep learning annotations and LDscores}
\usage{
DEEPLEARNING.query_one_chr(
  subset_DT,
  base_url = "/sc/arion/projects/pd-omics/data/Dey_DeepLearning",
  level = c("Variant_Level", "Allelic_Effect"),
  tissue = c("NTS", "Blood", "Brain"),
  model = c("Basenji", "BiClassCNN", "DeepSEA", "ChromHMM", "Roadmap", "Others"),
  mean_max = c("MEAN", "MAX"),
  type = c("annot", "ldscore"),
  nThread = 4,
  verbose = T
)
}
\description{
Query deep learning annotations and LDscores, and
then merge with \code{subset_DT} by \emph{SNP}.
}
\examples{
\dontrun{
data("BST1")
annot.dat <- DEEPLEARNING.query_one_chr(subset_DT=BST1, tissue="NTS", model="Basenji", type="annot")
}
}
\seealso{
Other DEEPLEARNING: 
\code{\link{DEEPLEARNING.query_multi_chr}()},
\code{\link{DEEPLEARNING.query}()}
}
\concept{DEEPLEARNING}
