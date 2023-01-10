# Biomart_pipeline

This code uses the biomaRt package to connect to the Ensembl database,
retrieve information about certain genes, and write the results to a file.
The code first connects to the Ensembl database using the useMart() function
and specifies that the dataset being used is "hsapiens_gene_ensembl" (human genes).
Then it reads a file called "genes.txt" which contain list of gene IDs.
It uses the getBM() function to query the Ensembl database for the HGNC symbol,
chromosome name, and band for the genes specified in the genes.txt file.
Finally, it writes the results of the query to a file called "out.txt" in
tab-separated format. One suggestion could be to verify if the file
"genes.txt" exists before trying to read it, and to check the results
of the query, in order to validate the returned data is correct.



