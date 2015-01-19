# assignment1_script.R
# Introductory assignment
#
#
#
# Each question will be written then I will proceed with code

# Question #1: Directory Path Handling
# One critical thing to do in analyzing a dataset is to keep a clean and neat directory structure
# with all your files in logical and easily traceable locations. Create a directory on your machine
# called Assignments. Within that directory create a subdirectory called assignment1.  Copy
# this file into that directory.  Note that these directory names should be exact, including
# capitalization. Finally, start a new R script called assignment1_script.R.  In this script, change the
# working directory to assignment1 and then print the current working directory to screen.

workdir <- "C:/Users/saler_000/Dropbox/Anthony_Salerno/Assignments/Assignment1";
setwd(workdir);
printWorkDir <- getwd();
print(printWorkDir)

# Question #2: Directory Listing
# Now use an R command to print the list of files found in assignment1 to screen.
list.files(printWorkDir)

# Question #3: File Input I
# Next we will look at opening files: starting by saving Assignment1-data.txt to assignment1 however you
# like. Open Assignment1-data.txt in R, saving it as a variable. Note that Assignment1-data.txt
# contains row names and column names, which you will need to handle correctly.  Now print the name
# of row 12 to screen in R.
data <- read.table("Assignment1-data.txt",
					row.names = 1,
					header = TRUE,
					sep = ",");

rows <- rownames(data);
print(rows[12]) # I know this print is a bit redundant, but for good measure I put it in.

# Question #4: File Input II
# Now print to screen the dimensions of this variable.
size <- dim(data);
print(size)
# Or more legibly 
print(sprintf("The dimensions of the dataset are %d rows by %d columns.",size[1],size[2]))


# Question #5: File Input III
# Finally, print to screen the contents of the cell in [12, 8].
print(data[12,8])

# Question #6: File Input IV - calculating summary measures
# Now we will print a summary characteristic.  Using any approach you like, calculate the mean
# of row 12 and print it to screen.
mean12 <- rowMeans(data[12,]);
print(mean12)

# Question #7: File Output
# Finally, multiply each cell of your data by -1 and save this into a new variable.
# Write the resulting object to file as a tab-delimited file with intact row and column names.
dataneg = -1*data;
write.table(data,file="Assignment1-data-NEGATIVE.txt",sep="\t",quote = false) #Used a \t here for tab delimited.
