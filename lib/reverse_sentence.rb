# A method to reverse the words in a sentence, in place.
# Time complexity: n * m
# Space complexity: n
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil?

  sentence_array = []
  length = my_sentence.length
  count = 0
  index = 1

  #split my_sentence into grouped spaces and characters == my_sentence.split(/\s/)
  while count < length
    spaces = ""
    chars = ""

    while count < length && my_sentence[count] == " "
      spaces << my_sentence[count]
      count += 1
    end

    sentence_array << spaces if spaces.length > 0

    while count < length && my_sentence[count] != " "
      chars << my_sentence[count]
      count += 1
    end

    sentence_array << chars if chars.length > 0
  end

  #reverse grouped items inplace == sentence_array.reverse!
  while index <= sentence_array.length/2
    temp = sentence_array[index - 1]
    sentence_array[index - 1] = sentence_array[sentence_array.length - index]
    sentence_array[sentence_array.length - index] = temp
    index += 1
  end

  #join reversed array items into a string == sentence_array.join
  reversed = ""
  sentence_array.length.times { |item| reversed << sentence_array[item]}

  #modify reference value of method argument
  my_sentence[my_sentence] = reversed
end