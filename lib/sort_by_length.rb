# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) with bubble sort by the string size
# Space complexity: O(n) words_array is dependent on the parameter passed in, and the variables temp, j, i are constans
def sort_by_length(my_sentence)

  # "I love Ada" => ["I", "Ada", "love"]
  # can't use sort or reverse
  # can we use other enumerables? like max_by? I'm assuming no
  # pseudocode
  # split my_sentence
  # loop through the words_array, bubble sort by the element.size

  words_arr = my_sentence.split

  i = 0
  while i < words_arr.size - 1 # while i is less than the last index, go in loop
    j = 0
    while j < words_arr.size-i-1 # while j is less than
      if words_arr[j].size > words_arr[j+1].size # compares adjacent elements by string size, if first one is bigger than second one
        temp = words_arr[j] # store value of first one in temp variable
        words_arr[j] = words_arr[j+1] # set first one to be value of second one
        words_arr[j+1] = temp # set value of temp to be the second one
      end
      j += 1
    end
    i += 1
  end

  return words_arr

end
