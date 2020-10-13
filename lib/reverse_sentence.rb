# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_sentence(my_sentence)
  parsed_sentence = my_sentence

  while parsed_sentence.include?(' ')

    space_index = my_sentence =~ /\s/
    parsed_sentence = parsed_sentence[space_index + 1..-1]

    my_sentence[0...space_index], my_sentence[space_index..-1] = my_sentence[(space_index + 1)..-1], my_sentence[0...space_index]

    p my_sentence

  end


  return my_sentence
end


