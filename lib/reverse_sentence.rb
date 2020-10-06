# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  return my_sentence if my_sentence.length == 0

  word_array = my_sentence.split(/(?=\s)|(?<=\s)/)
  i = 0
  j = word_array.length - 1
  while i < j
    temp = word_array[i]
    word_array[i] = word_array[j]
    word_array[j] = temp
    i += 1
    j -= 1
  end
  reversed_sentence = ""
  word_array.each do |string|
    reversed_sentence.concat(string)
  end
  my_sentence.replace(reversed_sentence)
  return my_sentence
end
