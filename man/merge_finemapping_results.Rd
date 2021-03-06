% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotate.R
\name{merge_finemapping_results}
\alias{merge_finemapping_results}
\title{Merge fine-mapping results from all loci}
\usage{
merge_finemapping_results(
  dataset = "./Data/GWAS",
  minimum_support = 1,
  include_leadSNPs = T,
  LD_reference = NULL,
  save_path = F,
  from_storage = T,
  haploreg_annotation = F,
  regulomeDB_annotation = F,
  biomart_annotation = F,
  PP_threshold = 0.95,
  consensus_threshold = 2,
  exclude_methods = NULL,
  top_CS_only = F,
  verbose = T,
  nThread = 4
)
}
\arguments{
\item{dataset}{Path to the folder you want to recursively search for results files within
 (e.g. \url{"Data/GWAS/Nalls23andMe_2019"}).
Set this to a path that includes multiple subfolders if you want to gather results
from multiple studies at once
(e.g. \url{"Data/GWAS"}).}

\item{minimum_support}{Filter SNPs by the minimum number
of fine-mapping tools that contained the SNP in their Credible Set.}

\item{include_leadSNPs}{Include lead GWAS/QTL SNPs per locus
(regardless of other filtering criterion).}

\item{from_storage}{Search for stored results files.}

\item{haploreg_annotation}{Annotate SNPs with HaploReg (using \code{HaploR}).}

\item{regulomeDB_annotation}{Annotate SNPs with regulaomeDB (using \code{HaploR}).}

\item{biomart_annotation}{Annotate SNPs with \code{biomart}.}

\item{PP_threshold}{Mean posterior probability threshold to include SNPs in mean PP Credible Set
(averaged across all fine-mapping tools).}

\item{exclude_methods}{Exclude certain fine-mapping methods when estimating
\strong{mean.CS} and \strong{Consensus_SNP}.}

\item{verbose}{Print messages.}

\item{xlsx_path}{Save merged data.frame as excel file.}

\item{consensus_thresh}{The minimum number of tools that have the SNPs in their Credible Set
to classify it as a \strong{Consensus_SNP}.}
}
\description{
Gather fine-mapping results from \emph{echolocatoR} across all loci
and merge into a single data.frame.
}
\examples{
dataset_dir <- "~/Desktop/Fine_Mapping/Data/GWAS/Nalls23andMe_2019"
# UCS and lead SNPs: No annotation
merged_DT <- merge_finemapping_results(dataset=dataset_dir, minimum_support=1, include_leadSNPs=T)

# UCS and lead SNPs: With annotations
merged_DT <- merge_finemapping_results(dataset=dataset_dir, minimum_support=1, include_leadSNPs=T, haploreg_annotation=T, biomart_annotation=T)
}
\concept{annotatate}
