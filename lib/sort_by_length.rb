# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) , because i have a nested loop and they depend on the size of the words_array
# Space complexity: O(n), because I am creating a new array to manipulate the string.
def sort_by_length(my_sentence)
  words_array = my_sentence.split(" ")
  i = 0
  did_swap = true
  while i < words_array.length - 1 && did_swap
    did_swap = false
    j = 1
    while j < words_array.length - i
      if words_array[j - 1].length > words_array[j].length
        did_swap = true
        temp = words_array[j - 1]
        words_array[j - 1] = words_array[j]
        words_array[j] = temp
      end
      j += 1
    end
    i += 1
  end
  return words_array
end

