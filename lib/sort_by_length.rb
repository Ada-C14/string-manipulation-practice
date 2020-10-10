# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) because there are two loops
# Space complexity: O(n) because the size of the words array depends on the length of the sentence
def sort_by_length(my_sentence)
  words = my_sentence.split
  i = 0

  while i < words.length - 1
    j = 0
    while j < words.length - i - 1
      if words[j].length > words[j + 1].length
        temp = words[j]
        words[j] = words[j + 1]
        words[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  return words
end
