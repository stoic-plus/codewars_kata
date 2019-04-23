require 'pry'

def decodeMorse(morseCode)
  # split mC by ""
  # spaces = ""
  # decoded = ""
  # current_code = ""
  # iterate over split
    # if current == ""
      # increment spaces
    # else
      # if decoded is empty
        # add to current_code - char at MORSEC
      # else
        # if spaces > 1
          # add a space to decoded
          # add current_code to decoded
          # reset current_code
        # else
          # add to current_code
        # reset spaces to 0
  # end
  # return decoded
  split = morseCode.split("")
  spaces = 0
  decoded = ""
  current_code = ""
  split.each do |char|
    spaces += 1 and next if char == ""
    binding.pry
    if decoded.empty?
      current_code += MORSECODE[char]
    else
      if spaces > 1
        decoded += " " + current_code
        current_code = MORSECODE[char]
      else
        current_code += MORSECODE[char]
      end
      spaces = 0
    end
  end
end

decodeMorse('.... . -.--   .--- ..- -.. .')
