# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence == "" or my_sentence == nil
    return my_sentence
  else
    sentence_array = my_sentence.split(/(\s)|(<=\s)/)

    i = 0
    j = (sentence_array.length - 1)
    until i > j
      temp = sentence_array[j]
      sentence_array[j] = sentence_array[i]
      sentence_array[i] = temp
      i += 1
      j -= 1
    end

    reversed_sentence = sentence_array.join
    my_sentence.replace(reversed_sentence)

    return my_sentence
  end

end
