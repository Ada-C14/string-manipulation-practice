# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  for i in 1...(array.length)
    j = i
    while j > 0
      if array[j-1].length > array[j].length
        temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
      else
        break
      end
      j = j - 1
    end
  end
  return  array
end

#time complexity would be O(n^2)--there's a nested loops
# space complexity: O(1)--everything happens in place. The temp array will go away and no new arrays are created.