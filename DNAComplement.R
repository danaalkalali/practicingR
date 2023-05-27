#my first R lil project to get the complementary DNA strand! 26/5/2023

DNAseq <-function(x){
  basepair=c("A", "T", "G", "C")
  abc<-unlist(strsplit(toupper(x), NULL))
  paste(unlist(lapply(abc, function(DNAseq){
    if(DNAseq=="A") stringss<-"T"
    if(DNAseq=="T") stringss<-"A"
    if(DNAseq=="G") stringss<-"C"
    if(DNAseq=="C") stringss<- "G"
    if(!DNAseq%in%basepair) stringss<-"N"
  return(stringss)
  })), collapse = "")
}

DNAseq("TATTATATTATTAGCGCATACGATCAPIEFJWIEFJ|TGGAC")




