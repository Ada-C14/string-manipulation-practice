# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  all_words = my_sentence.split(/(\s+)|(\\w+)/)
  return my_sentence if all_words.length == 1

  i = 0
  j = all_words.length - 1

  while i < j
    all_words[i], all_words[j] = all_words[j], all_words[i]
    i += 1
    j -= 1
  end

  my_sentence.replace(all_words.join(''))
end
