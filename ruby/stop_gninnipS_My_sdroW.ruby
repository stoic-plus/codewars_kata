# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
#
#
# Examples:
#
# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# spinWords( "This is a test") => returns "This is a test"
# spinWords( "This is another test" )=> returns "This is rehtona test"

def reverse(str)
  half = str.length / 2
  half.times do |i|
    swap = str[i]
    str[i] = str[str.length - (i + 1)]
    str[str.length - (i + 1)] = swap
  end
  str
end

def spinWords(string)
  spinned = string.split(" ").map {|word| word.length >= 5 ? reverse(word) : word }
  spinned.join(" ")
end

# Test.assert_equals(spinWords("Hey fellow warriors"), "Hey wollef sroirraw");
