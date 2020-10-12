# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  # insertion sort
  i = 1 # no reason to compare i = 0, so start at index 1
  while i < array.length
    to_insert = array[i] # on first iteration, takes 2nd word in the array
    j = i
    # index j-1 below is index 0 for first iteration
    while j > 0 && array[j-1].length > to_insert.length
      array[j] = array[j-1] # if length at index 0 is more than at index 1, assign value at index 0 to replace value at index 1
      j -= 1
    end
    array[j] = to_insert #if not, leave as is and move on to next comparison
    i += 1
  end
    return array
end
