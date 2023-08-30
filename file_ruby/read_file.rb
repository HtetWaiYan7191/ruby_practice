#file = File.open('test.txt') #input file data into the file variable way
# print file_data_2 = File.read("test.txt").split #use File class read method directly
# print file_data_1 = file.read
# print file_data = file.readlines.map(&:chomp)

# print file_data = file.readlines.map(&:chomp)

# File.foreach("test.txt") { |line| puts line}

## the whole file reading 
file = File.open("test.txt")
file_data = file.read
print file_data + "whole file reading"

# line by line reading 
file.rewind
print file_data_1 = file.readlines.map(&:chomp) 

# line by line reading using foreach method on File class directly combining with the file open
File.foreach("test.txt") {|line| puts line + "File.foreach to run line by line" } 

# write file
File.open("write.txt", "w") { |f| f.write "#{Time.now} - User logged in/n"}

#write data in file //overwrite // shortcut
File.write("write.txt", "#{Time.now} - User logged In")

#append data in the file
File.write("write.txt" ,"\ndata...\n", mode: "a")

# write array to the file // need to convert it first
File.write("write.txt", [1,2,3].join("\n"), mode:"a")


