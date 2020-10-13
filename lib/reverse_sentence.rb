# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_sentence(my_sentence)
  parsed_sentence = my_sentence
  space_indices = []

  i = 0
  while parsed_sentence.include?(' ')
    space_index = space_index ? space_indices[i - 1] + 1 :  0
    space_index += (parsed_sentence =~ /\s/)
    parsed_sentence = parsed_sentence[space_index + 1..-1]
    space_indices << space_index
    i += 1
  end

  word_swap(my_sentence, space_indices)

end

def word_swap(sentence, space_indices)
  original_sentence = sentence.dup
  word_first = 0
  unsorted_last = sentence.length - 1

  num_words = space_indices.length + 1

  num_words.times do |i|
    space_index = space_indices[i] ? space_indices[i] : original_sentence.length
    word_last = space_index - 1

    sentence[-space_index..unsorted_last] = original_sentence[word_first..word_last]
    #use space_index, but make more negative since counting from string end starts at -1
    if space_index < original_sentence.length
      sentence[-space_index - 1] = " "
    end

    unsorted_last = original_sentence.length - (space_index + 2)
    word_first = space_index + 1
  end
end



