# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  new_array = my_sentence.split
  word_length = split_array.length

  i = 0
  while i < word_length - 1
    j = 0
    while j < (word_length - i - 1)
      if new_array[j].length > new_array[j + 1].length
        temp = new_array[j]
        new_array[j] = new_array[j + 1]
        new_array[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  return new_array
  # raise NotImplementedError, "Method not implemented"
end
