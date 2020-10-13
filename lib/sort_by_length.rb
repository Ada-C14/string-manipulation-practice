# @PaulineChane on GitHub, Ada Developers Academy C14
# frozen_string_literal: true

# A method which will return an array of the words in the string
# sorted by the length of the word.
# Time complexity: O(n^2) The most expensive operation occurs in the nested loop.
#                   The outer loop depends on the length of the unsorted array prior to the loop running
#                   Rather, n-1, as the first element is popped prior to the loop running.
#                   The inner loop travels through the length of the sorted array minus 1 (n-1) as it builds up to the
#                   length of the original unsorted array.
#                   In a worst case scenario, the inner loop runs once in the first loop and n-1 times
#                   in the last loop. This is about the equivalent to summing up the first
#                   n -1 positive numbers, or (n - 1) * (n - 1 + 1)/2 = (n^2 - n)/2, or n^2 iterations.
#                   There IS an insert function in there, but that doesn't multiply on top of the O(n^2)
#                   complexity. So more like ((n^2 - n)/2) + n, which is still O(n^2)
# Space complexity: O(n) There are two O(n) operations that add up linearly.
#                   First, from creating the unsorted array from the string with the .split method
#                   Second, from created the sort array to where elements of the unsorted array were sorted into.
#                   Likely the length of the string will be larger than the length either of the arrays,
#                   and the arrays created are "compounded" linearly unlike in a nested loop.
#                   n in this case should likely represent the length of the string.
def sort_by_length(my_sentence)
  # check for empty array
  return [] if my_sentence.empty?

  # split by whitespace, this SHOULD be an O(n) operation
  # since you must go through the length of the string
  unsorted = my_sentence.split(' ') # creation of new array leads to O(n) space complexity
  return unsorted if unsorted.length == 1
  # shovel array
  sorted = [] # another O(n) space complexity operation
  # add the first element; by this point, all arrays have at least tweo
  insert = unsorted.shift
  sorted.append(insert) # since this is ALWAYS a single element, SHOULD be O(1)
  # outer loop, O(n) to go through unsorted array
  until unsorted.empty?
    insert = unsorted.shift
    i = sorted.length - 1
    # inner loop to find index to insert after, O(n) per iteration of outer loop
    while i >= 0 && insert.length < sorted[i].length
      i -= 1
    end
    # insert when found
    # O(n) operation that adds to time complexity of nested loop without increasing Big O further
    sorted.insert(i + 1, insert)
  end
  sorted
end