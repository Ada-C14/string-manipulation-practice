# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)

  array = my_sentence.split(" ")
  length = array.length

  i = 1
  while i < length
    to_insert = array[i]
    j = i

    # making comparisons between the current word length
    # to each of the already sorted items
    # searches for the correct position place the current word
    while j > 0 && array[j-1].length > to_insert.length
      array[j] = array[j-1]
      j -= 1
    end
    array[j] = to_insert
    i += 1

  end

  return array

end
