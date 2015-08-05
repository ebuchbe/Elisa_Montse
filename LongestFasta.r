#install.packages("seqinr") ###this package is important for handling fasta files
#library("seqinr") ###loading the fasta file e.g. haemo.fasta

input <- args[1] ##this is the input fasta file
fasta <- read.fasta(input) ##this reads the input fasta file
sequences <- NULL
len <- NULL
both <- NULL
result <- NULL
lengths <- NULL #this are all the empty vectors which are filled during the iterations

for (i in 1:length(fasta)){ 
sequences <- fasta[i] #takes the first, second,... sequence 
len <- length(sequences[[1]]) #calculates the length of the sequence 
both <- c(sequences,len) #puts together the sequence and the length of it 
result <-c (result, both) #safes the sequences and the lengths together
lengths <- c(lengths, len)} #this creates a vector with the lengths of the sequences
maximum <- result[which.max(result[[2]])] #this gives me the longest sequence
longest <- max(lengths) #I get the max of the length vector
#print (result)
#print (longest)
#print (maximum)

print (c("the longest sequence is", names(maximum), "with a length of", longest, "nucleotides")) 

