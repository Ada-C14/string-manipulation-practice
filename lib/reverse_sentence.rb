# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2)
# Space complexity: ?
def reverse_sentence(my_sentence) #using bubble sort method
  if my_sentence == nil || my_sentence.length < 1
    return nil
  end

  array = my_sentence.split(/(\s+)/)
  length = array.length

  i = 0
  while i < length-1 # outer loop
    j = 0
    while j < length-i-1 # inner loop
      if array[j] > array[j+1] # swap
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return array
end



