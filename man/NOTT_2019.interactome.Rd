% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{NOTT_2019.interactome}
\alias{NOTT_2019.interactome}
\title{Brain cell type-specific enhancers, promoters, and interactomes}
\format{
An object of class \code{list} of length 12.
}
\source{
\url{https://science.sciencemag.org/content/366/6469/1134}
}
\usage{
NOTT_2019.interactome
}
\description{
Originally from \href{https://science.sciencemag.org/content/366/6469/1134}{Nott et al. (2019)}.
Specifically: \emph{aay0793-Nott-Table-S5.xlsx}.
}
\examples{
\dontrun{
file <- "~/Desktop/Fine_Mapping/echolocatoR/annotations/Nott_2019/aay0793-Nott-Table-S5.xlsx"
sheets <- readxl::excel_sheets(file)
enh_prom_sheets <- grep("enhancers|promoters",sheets,value = T)
other_sheets <- grep("enhancers|promoters",sheets,value = T, invert = T)
NOTT_2019.interactome <- lapply(other_sheets, function(s){readxl::read_excel(file, sheet=s, skip=2)})
NOTT_2019.interactome <- append(NOTT_2019.interactome, lapply(enh_prom_sheets, function(s){readxl::read_excel(file, sheet=s, skip=2, col_names = c("chr","start","end"))}) )
names(NOTT_2019.interactome) <- c(other_sheets, enh_prom_sheets)
usethis::use_data(NOTT_2019.interactome, overwrite = T)
}
}
\seealso{
Other NOTT_2019: 
\code{\link{NOTT_2019.bigwig_metadata}},
\code{\link{NOTT_2019.epigenomic_histograms}()},
\code{\link{NOTT_2019.get_epigenomic_peaks}()},
\code{\link{NOTT_2019.get_interactions}()},
\code{\link{NOTT_2019.get_interactome}()},
\code{\link{NOTT_2019.get_promoter_celltypes}()},
\code{\link{NOTT_2019.get_promoter_interactome_data}()},
\code{\link{NOTT_2019.get_regulatory_regions}()},
\code{\link{NOTT_2019.plac_seq_plot}()},
\code{\link{NOTT_2019.superenhancer_interactome}},
\code{\link{NOTT_2019.superenhancers}()}
}
\concept{NOTT_2019}
\keyword{datasets}
