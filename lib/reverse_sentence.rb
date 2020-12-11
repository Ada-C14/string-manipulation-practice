# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end

  i = 0
  j = my_sentence.length - 1
  swap(i,j, my_sentence)
  word_i = 0
  word_j = 0
  until word_i > my_sentence.length
    until my_sentence[word_j] == " " || word_j == my_sentence.length
      word_j += 1
    end
    swap(word_i, word_j - 1, my_sentence)
    word_i = word_j + 1
    word_j += 1
  end

  return my_sentence
end

def swap(i,j, string_to_flip)
  until i > j
    temp = string_to_flip[i]
    string_to_flip[i] = string_to_flip[j]
    string_to_flip[j] = temp
    i += 1
    j -= 1
  end
end

