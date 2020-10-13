# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)

def reverse_sentence(my_sentence)

  return nil if my_sentence.nil?

  str_arr = my_sentence.split(/(\s)/)

  i = 0
  j = str_arr.length - 1

  while i < j
  #  swap words at i and j
  temp = str_arr[i]
  str_arr[i] = str_arr[j]
  str_arr[j] = temp
  i += 1
  j -= 1
  end
  return my_sentence.replace(str_arr.join(""))
end
