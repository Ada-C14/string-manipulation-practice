# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n log n) where n is the length of the sentence
# Space complexity: O(n) where n is the length of the sentence
def sort_by_length(my_sentence)
  unsorted_words = my_sentence.split(/\W+/)
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

# # Time complexity: O(n) where n is the length of the sentence
# # Space complexity: O(n^2) where n is the length of the sentence because left_array[1..left_array.length] AND right_array[1..right_array.length]) make new arrays
# def merge(left_array, right_array)
#   if left_array.empty?
#     return right_array
#   elsif right_array.empty?
#     return left_array
#   elsif left_array.first.length <= right_array.first.length
#     [left_array.first] + merge(left_array[1..left_array.length], right_array)
#   else
#     [right_array.first] + merge(left_array, right_array[1..right_array.length])
#   end
# end

# Time complexity: O(n)
# Space complexity: O(1)
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