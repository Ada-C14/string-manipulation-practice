# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)

  if my_sentence == nil
    return ""
  end
  # having trouble figuring out why the trailing whitespace isn't being preserved, but the rest is?
  words = my_sentence.split(/ /)

  i = 0
  j = words.length - 1
  while i < j
    temp = words[i]
    words[i] = words[j]
    words[j] = temp
    i += 1
    j -= 1
  end

  word_str = words.join(" ")
  my_sentence.replace(word_str)
  return my_sentence
end

