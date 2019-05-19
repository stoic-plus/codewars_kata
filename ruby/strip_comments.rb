# Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.
#
# Example:
#
# Given an input string of:
#
# apples, pears # and bananas
# grapes
# bananas !apples
# The output expected would be:
#
# apples, pears
# grapes
# bananas
# The code would be called like so:
#
# result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])

def solution(input, markers)
  first = input.split("\n")[0]
  stripped = input.split("\n").map do |sub|
    marker = sub.chars.find{|c| markers.include?(c) }
    marker_index = marker ? sub.index(marker) : nil
    next sub unless marker_index
    sub.slice!(0...marker_index).strip
  end
  stripped.join("\n")
end
