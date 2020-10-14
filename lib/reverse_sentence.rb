# A method to reverse the words in a sentence, in place.
# Time complexity: O(n), linear
# Space complexity: O(n), creating new data structure

def reverse_sentence(my_sentence)
  #raise NotImplementedError
  return nil if my_sentence.nil?
  return "" if my_sentence.empty?

  str_reversed = []
  split_str = my_sentence.split(/(\s)/)

  i = 0
  j = split_str.length - 1 #starting point is last element of str
  while i <= j
  str_reversed << split_str[j - i]
  i += 1
  end
  return str_reversed.join("")
end

reverse_sentence("  I can do this!     ")


