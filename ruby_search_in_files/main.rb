# london = File.new("london.txt", "w+")
# ruby = File.new("ruby.txt", "w+")

# london.puts "This is london file"
# ruby.puts "This is ruby file"
def search key
    result = {}
    Dir.glob("*.txt") do |file| 
        f = File.open(file)
        f.each_with_index do |line, index|
            if line.include?(key)
                result[index+1] = file 
            end
        end
        f.close
    end
    result
end
#quicker way
def find(key)
    result = {}
    Dir.glob("*.txt") do |filename|
        File.foreach(filename).each_with_index do |eachline, index|
            if eachline.include?(key)
                result[index + 1] = filename
            end
        end
    end
     result
end

puts "Search in File"
print "Key: "
key = gets.chomp
result = find(key)
if result.length > 0
    result.each do |key, value|
        puts "LineNumber: #{key}, FileName:#{value}"
    end
else
    puts "Not found!"
end

