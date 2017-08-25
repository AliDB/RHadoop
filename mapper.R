#! /usr/bin/env Rscript

#input <- file( "stdin" , "r" )

input <- readLines("msnbc_preprocessed.txt")

counter <- 0

while( TRUE ){
  counter <- counter + 1
  currentLine <- input[counter]
  if( counter == length( input ) ){
    break
  }
  
  currentFields <- unlist( strsplit( currentLine , "::" ) )
  w <- as.numeric(c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17"))
  currentData <- as.numeric(unlist(strsplit(currentFields[2], " ")))
  Tabledata <- table(currentData)
  string123 <- ""
  result <= ""
  for(i in 1:(length(w)))
  {
    if(w[i] %in% names(Tabledata))
    {
      string123 <- paste(string123,Tabledata[names(Tabledata)==w[i]]," ")
    }
    else
    {
      string123 <- paste(string123,"0"," ")
      
    }
  }
  string123 <- paste(currentFields[1],string123,sep = ",")
  cat(string123, "\n")
  cat(string123, "\n", file="output2.csv", append=TRUE)
}

#length(grep("corn", dataset))

#close( input )
