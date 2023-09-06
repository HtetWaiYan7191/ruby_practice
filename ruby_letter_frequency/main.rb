def letter_frequency(text)
    chars = ('a'..'z').to_a + ('A'..'Z').to_a
    frequency = {}
    text.each_char do |char|
        if chars.include?(char)
            unless frequency.key?(char)
                frequency[char] = 1
            else 
                frequency[char] += 1
            end
        end
    end
    frequency
end

def display_ui
    puts "1 to exist"
    puts "Letter frequency"
    print "Text: "
    text = gets.chomp 
    if text == "1"
        puts "Existing the program"
        return
    end
    result = execute(text)
    result.each do |key, value| 
        puts "#{key}: #{value}"
    end
    display_ui
end

def execute(text)
    if text.is_a?(String)
         letter_frequency(text)
    else
        "not available"
    end
end
  
display_ui


