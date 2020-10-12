# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(2) i and j
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  return "" if my_sentence == ""
  return my_sentence unless /\s/ =~ my_sentence

  reverse(my_sentence, 0, my_sentence.length)
  i = /\S/ =~ (my_sentence)
  j = /\s/ =~ (my_sentence)
  if my_sentence[0] == " "
    j += 1 while /\s/ =~ (my_sentence[j])
    j += 1 while /\S/ =~ (my_sentence[j])
  end

  reverse(my_sentence, i, j)

  while j < my_sentence.length
    i += 1 while /\S/ =~ (my_sentence[i])
    i += 1 while /\s/ =~ (my_sentence[i])

    j += 1 while /\s/ =~ (my_sentence[j])
    j += 1 while /\S/ =~ (my_sentence[j])

    reverse(my_sentence, i, j)
  end

  return my_sentence
end

def reverse(string, start_index, end_index)
  end_index -= 1
  while start_index < end_index
    temp = string[start_index]
    string[start_index] = string[end_index]
    string[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return string
end
