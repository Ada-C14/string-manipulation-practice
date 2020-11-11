# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

  array_words = my_sentence.split(/(\s+)/)
  length = array_words.length

  if length == 1
    return array_words
  end

  i = 0
  j = length - 1

  while i < j
    array_words[i], array_words[j] = array_words[j], array_words[i]
    i += 1
    j -= 1
  end

  my_sentence.replace(array_words.join(''))

  return my_sentence
end
