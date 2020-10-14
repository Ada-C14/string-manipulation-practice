# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  new_array = my_sentence.split(" ")
  new_sentence = []
  while new_array.length > 0
    min_index = find_smallest_in_array(new_array)
    temp = new_array.delete_at(min_index)
    new_sentence << temp
  end
  return new_sentence
end

def find_smallest_in_array(array)
    j = 1
    min_index = 0
    while j < array.length
      if array[j].length < array[min_index].length
        min_index = j #finding the index with the smallest value
      end
      j += 1
    end
    return min_index
end

  # def swap_indices(array, i, j)
  #   if j != i
  #     temp = array[j]
  #     array[j] = array[i]
  #     array[i] = temp
  #   end
#end