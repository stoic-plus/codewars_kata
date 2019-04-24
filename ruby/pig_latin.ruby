def pig_it text
  text.split(" ").map do |word|
    next word if word =~ /^[^a-zA-Z]$/
    word[1..(word.length)] + word[0] + 'ay'
  end.join(" ")
end

# Test.assert_equals(pig_it('Pig latin is cool'),'igPay atinlay siay oolcay')
# Test.assert_equals(pig_it('This is my string'),'hisTay siay ymay tringsay');
