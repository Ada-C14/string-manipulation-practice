# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  array = my_sentence.split(/ /,-1)
  return my_sentence if my_sentence.split(/ /,-1).length < 2

  i = 0
  j = array.length - 1
  while i < j
    last = array[j]
    array[j] = array[i]
    array[i] = last
    i += 1
    j -= 1
  end
  my_sentence.replace array.join(" ")
  return my_sentence
end