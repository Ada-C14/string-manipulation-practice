# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split
  i = 1



  while i < sentence_array.length
    to_insert = sentence_array[i]
    j = i
    while j > 0 && sentence_array[j-1].length > to_insert.length
      sentence_array[j] = sentence_array[j-1]
      j -= 1
    end
    sentence_array[j] = to_insert
    i += 1
  end

return sentence_array
end
