def panagram?(string)
  return false if string.gsub(/[^a-zA-Z]/, '').length < 26
  seen = string.split("").reduce([]) do |seen, char|
    char = char.downcase
    seen.push(char) if !seen.include?(char) && char =~ /[a-z]/
    seen
  end
  !(seen.length < 26)
end
