# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if !my_sentence
  split_sentence = my_sentence.split(/( +)/)
  i = 1
  while i <= split_sentence.length/2
    temp = split_sentence[i-1]
    split_sentence[i-1] = split_sentence[split_sentence.length-i]
    split_sentence[split_sentence.length-i] = temp
    i+=1
  end
  temp_string = split_sentence.join

  j = 0
  while j < temp_string.length
    my_sentence[j] = temp_string[j]
    j += 1
  end
end