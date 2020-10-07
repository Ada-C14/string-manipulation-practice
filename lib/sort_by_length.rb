# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(nlogn)
# Space complexity: O(n)

def split_arr(arr)
  mid_point = (0 + arr.size - 1) / 2
  start_idx_left = 0
  end_idx_left = mid_point
  start_idx_right = mid_point + 1
  end_idx_right = arr.size - 1

  left_arr = arr[start_idx_left..end_idx_left]
  right_arr = arr[start_idx_right..end_idx_right]

  return left_arr, right_arr
end

def merge_and_sort(left, right)
  merged = []
  # puts "Merging #{left} with #{right}"
  while left.size > 0 && right.size > 0
    if left[0].length < right[0].length
      # puts "Left word is shorter than right word"
      merged << left[0]
      left.shift
    elsif left[0].length == right[0].length
      # puts "Left word is same length as right word"
      merged << left[0]
      left.shift
    else
      # puts "Right word is shorter than left word"
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

  # puts "This is the array I'm checking: #{words_arr}"

  # Baseline - 1 element array is sorted
  return words_arr if words_arr.size == 1

  left_arr, right_arr = split_arr(words_arr)

  # puts "This is my left array: #{left_arr}"
  # puts "This is my right array: #{right_arr}"
  # Sub-problem 1 - divide
  left_arr = sort_by_length(left_arr)
  right_arr = sort_by_length(right_arr)
  # puts "Here is my left array to merge: #{left_arr}"
  # puts "Here is my right array to merge: #{right_arr}"

  # Sub-problem 2 - conquer (merge and sort)
  merged_arr = merge_and_sort(left_arr, right_arr)

  return merged_arr
end
