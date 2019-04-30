# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
#
# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

def panagram?(string)
  return false if string.gsub(/[^a-zA-Z]/, '').length < 26
  seen = string.split("").reduce([]) do |seen, char|
    char = char.downcase
    seen.push(char) if !seen.include?(char) && char =~ /[a-z]/
    seen()
  end
  !(seen.length < 26)
end

def panagram?(string)
  new_s = string.downcase.gsub(/[^a-zA-Z]/, '').split("").sort
  return false if new_s.length < 26 || new_s.first.ord != 97 || new_s.last.ord != 122
  new_s.each_with_index do|char, i|
    if new_s[i + 1]
      return false if (new_s[i + 1].ord - char.ord) > 1
    end
  end
  return true
end

# describe "Panagram" do
#   it "Check do string is a Panagram" do
#     # "The quick brown fox jumps over the lazy dog."
#     Test.assert_equals(panagram?("The quick brown fox jumps over the lazy dog."), true)
#     # "This is not a pangram."
#     Test.assert_equals(panagram?("This is not a pangram."), false)
#   end
# end
