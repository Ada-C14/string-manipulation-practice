# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) multiple reverses that are not nested.
# Space complexity: O(1) constant number of variables
def reverse_sentence(my_sentence)
  return "" if my_sentence.nil?
  my_reverse(my_sentence)
  i = 0
  j = 0
  index = 0
  set_first_letter = false

  while index < my_sentence.length
    letter = my_sentence[index]

    if letter != " " && set_first_letter == false
      i = index
      set_first_letter = true
    end

    if set_first_letter == true && letter == " "
      j = index - 1
      my_sentence[i..j] = my_reverse(my_sentence[i..j])
      set_first_letter = false
    elsif set_first_letter == true && index == my_sentence.length - 1
      j = index
      my_sentence[i..j] = my_reverse(my_sentence[i..j])
    end

    index += 1
  end

  return my_sentence
end

def my_reverse(str)
  i = 0
  j = str.length - 1
  while i < j
    temp = str[i]
    str[i] = str[j]
    str[j] = temp

    i += 1
    j -= 1
  end
  return str
end
