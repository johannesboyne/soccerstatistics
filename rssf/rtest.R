#!/usr/bin/Rscript
args <- commandArgs(trailingOnly = TRUE)
p <- paste("./clearresults.sh '", args[1], "'", sep = "")
print(p)
x <- readLines(pipe(p))
res <- HoltWinters(ts(as.numeric(x)), beta=FALSE, gamma=FALSE)
print(res)
