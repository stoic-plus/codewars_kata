require "rspec"
require 'pry'

CONVERSION = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}

# def solution(roman)
#   values = []
#   final = 0
#   alwaysDescending = true
#   split = roman.split("")
#   split.each_with_index do |char, i|
#     if split[i + 1]
#       binding.pry
#       alwaysDescending = false unless split[i + 1] <= split[i]
#     end
#     values.push CONVERSION[char.upcase]
#   end
#   binding.pry
#   return values.reduce(:+) if alwaysDescending
# end


def solution(roman)
  split = roman.split("")
  last_value = 0
  split.reduce(0) do |final, char|
    current = CONVERSION[char.upcase]
    binding.pry
    if current >= last_value
      final += current
    else
      final -= current
    end
    binding.pry
    last_value = current
    final
  end
end

describe "Solution" do
  it "should convert roman numerals" do
    # actual = solution('MCMXC')
    # expect(actual).to eq(1990)
    #
    # actual = solution('MMVIII')
    # expect(actual).to eq(2008)
    #
    # actual = solution('MDCLXVI')
    # expect(actual).to eq(1666)

    actual = solution('XXI')
    expect(actual).to eq(21)
  end
end
