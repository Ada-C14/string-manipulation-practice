# A method which will return an array of the words in the string
# sorted by the length of the word.
#
# Where n is the size of the array (or number of words passed through the string):
# >> Time complexity: O(nlogn)
#    There are logn levels of work to do (dividing array in half logn times)
#    At each level, n comparisons are made (on average)
# >> Space complexity: O(nlogn)
#    We create temporary left and right sub-arrays (by splitting original in half each layer)
#    It takes logn steps to get to single element arrays, with each layer requiring total of "n" space
#    (unless Ruby somehow garbage collects between steps?  Then O(n))

def split_arr(arr)
  mid_point = (arr.size - 1) / 2

  left_arr = arr[0..mid_point]
  right_arr = arr[(mid_point + 1)..(arr.size - 1)]

  return left_arr, right_arr
end

def merge_and_sort(left, right)
  merged = []

  while left.size > 0 && right.size > 0
    if left[0].length < right[0].length
      merged << left[0]
      left.shift
    elsif left[0].length == right[0].length
      merged << left[0]
      left.shift
    else
      merged << right[0]
      right.shift
    end
  end

  if left.size > 0
    merged += left
  elsif right.size > 0
    merged += right
  end

  return merged
end

def sort_by_length(my_sentence)
  if my_sentence.class == String
    words_arr = my_sentence.split
    return words_arr if words_arr.size == 0
  else
    words_arr = my_sentence
  end

  # Baseline - 1 element array is sorted
  return words_arr if words_arr.size == 1

  left_arr, right_arr = split_arr(words_arr)

  # Sub-problem 1 - divide
  left_arr = sort_by_length(left_arr)
  right_arr = sort_by_length(right_arr)

  # Sub-problem 2 - conquer (merge and sort)
  merged_arr = merge_and_sort(left_arr, right_arr)

  return merged_arr
end
