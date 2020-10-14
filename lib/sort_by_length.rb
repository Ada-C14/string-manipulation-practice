# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?  O(n^2)
# Space complexity: ? O(n)
def sort_by_length(my_sentence)
  word_arr = my_sentence.split(' ')
  length = word_arr.length

  return bubble_sort(word_arr, length)
  #raise NotImplementedError, "Method not implemented"
end

def bubble_sort(array, length)
  i = 0
  while i < length-1
    j = 0
    while j < length-i-1
      if array[j].length > array[j+1].length
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return array
end
