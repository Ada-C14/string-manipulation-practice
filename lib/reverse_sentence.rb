# A method to reverse the words in a sentence, in place.
# Time complexity: ? O(n^2)
# Space complexity: ? 0(n)
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return nil
  end
  i = 0
  parts = []
  start_index = i
  in_word = my_sentence[0] != " "
  while i <= my_sentence.length - 1
    if in_word
      if my_sentence[i] == ' '
        parts << my_sentence[start_index..i - 1]
        start_index = i
        in_word = false
      end
    else
      if my_sentence[i] != ' '
        parts << my_sentence[start_index..i - 1]
        start_index = i
        in_word = true
      end
    end
    if  i == my_sentence.length - 1
      parts << my_sentence[start_index..i]
    end
    i += 1
  end
  j = parts.length - 1
  position = 0
  while j >= 0
    length = parts[j].length
    my_sentence[position...(position + length)] = parts[j]
    position += length
    j -= 1
  end
end

