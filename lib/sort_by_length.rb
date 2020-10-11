# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  array_of_word = my_sentence.split(" ")
  i = 0
  while i < array_of_word.length - 1
    j = 0
    while j < array_of_word.length - i - 1
      if array_of_word[j].length > array_of_word[j+1].length
        temp = array_of_word[j]
        array_of_word[j] = array_of_word[j + 1]
        array_of_word[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  return array_of_word
end
