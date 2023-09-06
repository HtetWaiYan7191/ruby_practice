f = File.new("test.txt", "w+")
f.puts "first line"
f.write "second line"
f.write "third line"
f.close
# File.absolute_path("test.txt")
puts File.basename("/mnt/c/Users/66993/Desktop/ruby-practice/ruby_file_operations/test.txt")