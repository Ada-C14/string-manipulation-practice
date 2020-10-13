# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: ? O(n)

# Bubble Sort
def sort_by_length(my_sentence)

  str_arr = my_sentence.split
  length = str_arr.length

  i = 0
  while i < length - 1  # outer loop
    j = 0
    while j < length-i-1 # inner loop
      if str_arr[j].length > str_arr[j+1].length # swap
        temp = str_arr[j]
        str_arr[j] = str_arr[j+1]
        str_arr[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return str_arr
end