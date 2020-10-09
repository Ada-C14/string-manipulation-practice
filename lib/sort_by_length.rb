# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(log n)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  unsorted_words = my_sentence.split(/[^0-9A-Za-z\']/)
  merge_sort(unsorted_words)
end

# Time complexity: O(log n)
# Space complexity: O(n)
def merge_sort(unsorted_words)
  if unsorted_words.length <= 1
    return unsorted_words
  else
    starting_index = 0
    midway_index = unsorted_words.length/ 2
    ending_index = unsorted_words.length - 1

    left_half = merge_sort(unsorted_words[starting_index...midway_index])
    right_half = merge_sort(unsorted_words[midway_index..ending_index])

    merge(left_half, right_half, unsorted_words)
  end
end

# Time complexity: O(n)
# # Space complexity: O(1)
def merge(left_array, right_array, full_array)
  i = 0
  while !left_array.empty? && !right_array.empty?
    if left_array.first.length <= right_array.first.length
      full_array[i] = left_array.shift
    else
      full_array[i] = right_array.shift
    end
    i += 1
  end

  while left_array.length > 0
    full_array[i] = left_array.shift
    i += 1
  end

  while right_array.length > 0
    full_array[i] = right_array.shift
    i += 1
  end

  return full_array
end

# def merge(left_array, right_array, full_array)
  # left_index = 0
  # right_index = 0
  # full_array_index = 0

  # while left_index < left_array.length && right_index < right_array.length
  #   if left_array[left_index] <= right_array[right_index]
  #     full_array[full_array_index] = left_array[left_index]
  #     left_index += 1
  #   else
  #     full_array[full_array_index] = right_array[right_index]
  #     right_index += 1
  #   end
  #
  #   full_array_index += 1
  # end
  #
  # while left_index < left_array.length
  #   full_array[full_array_index] = left_array[left_index]
  #   left_index += 1
  #   full_array_index += 1
  # end
  #
  # while right_index < right_array.length
  #   full_array[full_array_index] = right_array[right_index]
  #   right_index += 1
  #   full_array_index += 1
  # end
# end
