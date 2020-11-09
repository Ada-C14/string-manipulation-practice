# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)

  split_array = my_sentence.split
  word_length = split_array.length
  
  i = 0
  while i < word_length - 1
    j = 0 
    while j < (word_length - i - 1)
      if split_array[j].length > split_array[j + 1].length
        temp_word = split_array[j]
        split_array[j] = split_array[j + 1]
        split_array[j + 1] = temp_word
      end
      j += 1
    end 
    i += 1
  end 
  return split_array
end
