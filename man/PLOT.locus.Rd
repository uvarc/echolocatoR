% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PLOT.locus.R
\name{PLOT.locus}
\alias{PLOT.locus}
\title{Generate a locus plot}
\usage{
PLOT.locus(
  finemap_dat,
  locus_dir,
  LD_matrix = NULL,
  LD_reference = NULL,
  dataset_type = "GWAS",
  color_r2 = T,
  method_list = c("ABF", "FINEMAP", "SUSIE", "POLYFUN_SUSIE"),
  track_order = NULL,
  track_heights = NULL,
  plot_full_window = T,
  dot_summary = F,
  QTL_prefixes = NULL,
  mean.PP = T,
  PP_threshold = 0.95,
  consensus_threshold = 2,
  sig_cutoff = 5e-08,
  gene_track = T,
  point_size = 1,
  point_alpha = 0.6,
  snp_group_lines = c("Lead", "UCS", "Consensus"),
  xtext = F,
  show.legend_genes = T,
  XGR_libnames = NULL,
  n_top_xgr = 5,
  Roadmap = F,
  Roadmap_query = NULL,
  n_top_roadmap = 7,
  annot_overlap_threshold = 5,
  zoom_exceptions_str = "*full window$|zoom_polygon",
  Nott_epigenome = F,
  Nott_regulatory_rects = T,
  Nott_show_placseq = T,
  Nott_binwidth = 200,
  Nott_bigwig_dir = NULL,
  save_plot = T,
  show_plot = T,
  genomic_units = "Mb",
  strip.text.y.angle = 0,
  max_transcripts = 1,
  plot.zoom = c("1x"),
  dpi = 300,
  height = 12,
  width = 10,
  plot_format = "jpg",
  save_RDS = T,
  return_list = F,
  conda_env = "echoR",
  nThread = 4,
  verbose = T
)
}
\description{
Generate a locus-specific plot with multiple selectable tracks.
Users can also generate multiple zoomed in views of the plot at multiple resolutions.
}
\details{
#### TO-do
Add anchors to plac-seq arches
}
\examples{
library(echolocatoR)
finemap_dat<- echolocatoR::BST1; LD_matrix <- echolocatoR::BST1_LD_matrix;
locus_dir <- file.path("~/Desktop","results/GWAS/Nalls23andMe_2019/BST1")

locus_plot <- PLOT.locus(finemap_dat, locus_dir=locus_dir, LD_matrix=LD_matrix, Nott_epigenome=T, xtext=F, plot.zoom=c("5x"))
}
