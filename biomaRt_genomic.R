library("biomaRt")

listMarts()
ensembl=useMart("ensembl")

ensembl = useMart("ensembl",dataset="hsapiens_gene_ensembl")
ensembl

filters = listFilters(ensembl)
filters

#teste
genes <- read.table("genes.txt", header = F)

out <- getBM(attributes = c("hgnc_symbol", "chromosome_name", "band"),
      values     = genes, 
      mart       = ensembl
)

write.table ("out", file="out.txt", sep = "\t")
