def is_palindrome(word)
    return "yes" if word.length <= 1
    return "no" if word[0] != word[-1]
    is_palindrome(word[1,word.length-2])
end

puts "Palindrome Words"
print "Word: "
word = gets.chomp
puts "Is palindrome ?  #{is_palindrome(word)}"