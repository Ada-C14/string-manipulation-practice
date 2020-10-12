# A method which will return an array of the words in the string
#  sorted by the length of the word.


############ Merge sort ############
### Works for maintaining the order they appeared in the original string ###
#
# Time complexity: O(nlogn): there are three steps for merge sort.
#                          The helper method "divide_sort_array" divides an array into 2 sub-arrays everytime and sorts them when there are less then 2 elements in a sub-array.
#                          Its time complexity is O(logn).
#                          The helper method "merge_array" merges the sub-arrays and it depends on the length of the array, ie O(n).
#                          So the overall time complexity is O(logn) * O(n) --> O(nlogn)
# Space complexity: O(n): the variable "string_to_array" depends on the length of the String, it is O(n).
#                         In "divide_sort_array", it also generates new arrays, lower_index & higher_index, which are depending on the length of the array, it is O(n)
#                         Merge method uses the space depends on the length of the array, it is O(n).
#                         Plus the extra variables as constant, the space complexity is O(n) + O(n) + O(n) + O(1) -->O(n)
def sort_by_length(my_sentence)
  string_to_array = my_sentence.split
  return divide_sort_array(string_to_array)
end

# Helper method 1 - divide and sort an array
def divide_sort_array(array)
  if array.count < 2
    return array
  else
    mid_point = array.count / 2
    lower_index = array[0...mid_point]
    lower_array = divide_sort_array(lower_index)
    higher_index = array[mid_point...array.count]
    higher_array= divide_sort_array(higher_index)
    return merge_array(lower_array, higher_array)
  end
end

# Helper method 2 - marge the array
def merge_array(array1, array2)
  merge = Array.new
  array1_idx = 0
  array2_idx = 0
  while merge.count < (array1.count + array2.count)
    return merge + array2[array2_idx...array2.count] if array1[array1_idx].nil?
    return merge + array1[array1_idx...array1.count] if array2[array2_idx].nil?
    if array1[array1_idx].length <= array2[array2_idx].length
      merge.push(array1[array1_idx])
      array1_idx += 1
    else
      merge.push(array2[array2_idx])
      array2_idx += 1
    end
  end
end


############ Recursion (quicksort ?) ############
### Works for maintaining the order they appeared in the original string ###
#
# Time complexity: O(n^2): there is one loop, and its looping time for each recursion is descending.
#                          So the total time is (1 + n) * n/2 --> O(n^2)
# Space complexity: O(n^2): for each recursion, it creates a new set of string_to_array/less/greater arrays, ie O(3n).
#                           There are (n-1) times of recursion, so the space complexity is O(3n)*O(n-1) --> O(n^2)
# def sort_by_length(my_sentence)
#   return [] if my_sentence.length == 0
#   string_to_array = my_sentence.split
#   if string_to_array.count < 2
#     return string_to_array
#   else
#     pivot = string_to_array[0]
#     less = Array.new
#     greater = Array.new
#     string_to_array[1..string_to_array.count].each do |word|
#       less.push(word) if word.length < pivot.length
#       greater.push(word) if word.length >= pivot.length
#     end
#   end
#   return sort_by_length(less.join(" ")) + [pivot] + sort_by_length(greater.join(" "))
# end


############ Bubble sort ############
### Works for maintaining the order they appeared in the original string ###
#
# Time complexity: O(n^2): there are two while loops, and the inner one is nested in the outer one.
#                          When the inner one bubbles up the longest word, it takes O(n),
#                          and the outer loop runs the whole String, ie O(n).
#                          so the time complexity is O(n) * O(n) --> O(n^2)
# Space complexity: O(n): the variable "string_to_array" depends on the length of the String, it is O(n).
#                         The inner loop is in-place swap which doesn't take extra space.
#                         So plus the extra variables as constant, the space complexity is still O(n)
# def sort_by_length(my_sentence)
#   return [] if my_sentence.length == 0
#   string_to_array = my_sentence.split
#   if string_to_array.count > 1
#     idx = 0
#     while idx < (string_to_array.length - 1)
#       inner_idx = 0
#       while inner_idx < (string_to_array.length - 1)
#         if string_to_array[inner_idx].length > string_to_array[inner_idx + 1].length
#           string_to_array[inner_idx], string_to_array[inner_idx + 1] = string_to_array[inner_idx + 1], string_to_array[inner_idx]
#         end
#         inner_idx += 1
#       end
#       idx += 1
#     end
#   end
#   return string_to_array
# end


############ Selection sort ############
### Doesn't work for maintaining the order they appeared in the original string ###
#
# Time complexity: O(n^2): there are two loops, the inner loop is nested in the outer loop.
#                          When the inner loop finds the shortest word, it takes O(n),
#                          and the outer loop runs the whole String, ie O(n).
#                          So the time complexity is O(n) * O(n) --> O(n^2)
# Space complexity: O(n): the variable "string_to_array" depends on the length of the String, it is O(n).
#                         The inner loop is in-place swap which doesn't take extra space.
#                         So plus the extra variables, the space complexity is O(n)
# def sort_by_length(my_sentence)
#   return [] if my_sentence.length == 0
#   string_to_array = my_sentence.split
#   if string_to_array.count > 1
#     idx = 0
#     index_for_shortest_word = 0
#     while idx < (string_to_array.count - 1)
#       # Find the index for the shortest word in the left array
#       (idx..(string_to_array.count - 1)).each do |index|
#         if (string_to_array[index].length < string_to_array[idx].length) && (string_to_array[index].length < string_to_array[index_for_shortest_word].length)
#           index_for_shortest_word = index
#         end
#       end
#
#       # Swap the shortest word if the word in the current index is not the shortest one
#       if idx < index_for_shortest_word
#         string_to_array[idx], string_to_array[index_for_shortest_word] = string_to_array[index_for_shortest_word], string_to_array[idx]
#       end
#
#       idx += 1
#       index_for_shortest_word = idx
#     end
#   end
#   return string_to_array
# end


############ Insertion sort ############
### Works for maintaining the order they appeared in the original string ###
#
# Time complexity: O(n^2): there are two while loops, and the inner one is nested in the outer one.
#                          When the inner one compares to the front indexes to do the insertion, it takes O(n),
#                          and the outer loop runs the whole String, ie O(n).
#                          so the time complexity is O(n) * O(n) --> O(n^2)
# Space complexity: O(n): the variable "string_to_array" depends on the length of the String, it is O(n).
#                         The inner loop is in-place swap which doesn't take extra space.
#                         So plus the extra variables as constant, the space complexity is still O(n)
# def sort_by_length(my_sentence)
#   return [] if my_sentence.length == 0
#   string_to_array = my_sentence.split
#   if string_to_array.count > 1
#     idx = 0
#     while idx < (string_to_array.length - 1)
#       inner_idx = idx + 1
#       while inner_idx > 0
#         if string_to_array[inner_idx].length < string_to_array[inner_idx - 1].length
#           string_to_array[inner_idx], string_to_array[inner_idx - 1] = string_to_array[inner_idx - 1], string_to_array[inner_idx]
#         end
#         inner_idx -= 1
#       end
#       idx += 1
#     end
#   end
#   return string_to_array
# end