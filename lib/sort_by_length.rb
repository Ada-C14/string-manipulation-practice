# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n ^ 2) - it starts iterating by saving the index 1 to a temp variable, and loops again to compare index 1 with the index before it, and will swap positions if the value at i - 1 is greater
# Space complexity: O(m) - I am starting with a string, and outputting an array of the words, so I am creating a new data structure, the array to hold the sorted list.
def sort_by_length(my_sentence)
  #insertion sort
  array = my_sentence.split
  length = array.length

  i = 1
  while i < length
    to_insert = array[i]
    j = i
    #check index 1 to see if it should be at index zero
    while j > 0 && array[j - 1].length > to_insert.length
      # while the value at index 0 (or the index 1 before i) is greater than the value at index 1, then the value at index (i) should be reassigned to the value at index 0
      array[j] = array[j - 1]
      j -= 1
    end
    # this will execute if array[0] < array[1]
    array[j] = to_insert
    i += 1
  end
  return array
end