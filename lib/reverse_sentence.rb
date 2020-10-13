# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil? || my_sentence.length < 1
  array = my_sentence.split(/(\s+)/) #Regex that will keep track of whitespace
  length = array.length
  i = 1
  while i <= array.length/2
    temp = array[i-1]
    array[i-1] = array[length-i]
    array[length-i] = temp
    i += 1
  end
  sentence = array.join
  my_sentence.replace "#{sentence}"
  return
end

##Time complexity calculation:
# .split = O(n)--linear because multiple passes are made through the length of the array. Time will increase as input becomes larger
# regex expression also O(n)-n being the length of the array
#while loop: O(log n) -- looping through array length / 2
# join: O(n)
# .replace --? Not sure about the time complexity.
# I think this is O(n) because there is just one loop.

#Space Complexity
# new array created
# temp variable is auxiliary space
# Final array...all dependent on size of input
# I think the space complexity is O(n)

