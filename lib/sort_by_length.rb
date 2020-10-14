# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n3), cubic. nested loops, each of them are O(n)
# Space complexity: O(n), creating new data structure when splitting
def sort_by_length(my_sentence)
  #raise NotImplementedError, "Method not implemented"

  return '' if my_sentence.nil?

  split_arr = my_sentence.split(' ')
  length = split_arr.length
  i = 0
  while i < length - 1 #outer
    i = 0
    while i < length - 1 # inner loop
      j = 0
      while j < length-i - 1 # inner inner loop
        if split_arr[j].length > split_arr[j+1].length # swap
          temp = split_arr[j]
          split_arr[j] = split_arr[j+1]
          split_arr[j+1] = temp
        end
        j += 1
      end
      i += 1
    end

  end
  return split_arr
end

pp sort_by_length("I love Ada")