# A method to reverse the words in a sentence, in place.
# Time complexity:
# Space complexity:
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

  word_array = my_sentence.split(/\.?\s+/)
  i = 0
  ending_position = word_array.length - 1

  while i <= ending_position
    temp = word_array[i]
    word_array[i] = word_array[ending_position]
    word_array[ending_position] = temp
    i += 1
    ending_position -= 1
  end

  results = word_array.join(' ')
  word_array.join(' ').length.times do |x|
    my_sentence[x] = results[x]
  end
  return my_sentence
end
