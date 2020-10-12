# A method which will return an array of the words in the string
#  sorted by the length of the word.


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
def sort_by_length(my_sentence)
  return [] if my_sentence.length == 0
  string_to_array = my_sentence.split
  if string_to_array.count > 1
    idx = 0
    while idx < (string_to_array.length - 1)
      inner_idx = idx + 1
      while inner_idx > 0
        if string_to_array[inner_idx].length < string_to_array[inner_idx - 1].length
          string_to_array[inner_idx], string_to_array[inner_idx - 1] = string_to_array[inner_idx - 1], string_to_array[inner_idx]
        end
        inner_idx -= 1
      end
      idx += 1
    end
  end
  return string_to_array
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

