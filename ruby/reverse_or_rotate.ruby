# The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz (ignore the last chunk if its size is less than sz).
#
# If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.
#
# If
#
# sz is <= 0 or if str is empty return ""
# sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".
# Examples:
# revrot("123456987654", 6) --> "234561876549"
# revrot("123456987653", 6) --> "234561356789"
# revrot("66443875", 4) --> "44668753"
# revrot("66443875", 8) --> "64438756"
# revrot("664438769", 8) --> "67834466"
# revrot("123456779", 8) --> "23456771"
# revrot("", 8) --> ""
# revrot("123456779", 0) --> ""
# revrot("563000655734469485", 4) --> "0365065073456944"

def divisible_by_two?(num_str)
  num_str.split("").reduce(0) {|sum, num| sum += num.to_i * num.to_i } % 2 == 0
end

def rotate_left(num_str)
  num_str = "#{num_str[1..num_str.length]}#{num_str[0]}"
end

def revrot(str, sz)
  return "" if sz <= 0
  r_str = ""
  index = 0
  loop do
    sub = str[index...(index + sz)]
    return r_str if sub.length < sz
    r_str += sub.reverse if divisible_by_two?(sub)
    r_str += rotate_left(sub) unless divisible_by_two?(sub)
    index += sz
  end
end
#
# def testing(actual, expected)
#     Test.assert_equals(actual, expected)
# end
# Test.describe("revrot") do
#     Test.it("Basic tests") do
#         testing(revrot("1234", 0), "")
#         testing(revrot("", 0), "")
#         testing(revrot("1234", 5), "")
#         testing(revrot("733049910872815764", 5), "330479108928157")
#     end
# end
