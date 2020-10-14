# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return true
  end

  #\s white space
  my_sentence = my_sentence.split(/ /,-1)
  length = my_sentence.length
  count_front =  0
  count_back = length - 1
  until count_front >= count_back
    temp = my_sentence[count_front]
    my_sentence[count_front] = my_sentence[count_back]
    my_sentence[count_back] = temp
    count_front += 1
    count_back -= 1
  end
  my_sentence = my_sentence.join(" ")
  return my_sentence
end
