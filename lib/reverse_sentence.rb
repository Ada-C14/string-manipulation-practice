# A method to reverse the words in a sentence, in place.
# Time complexity: o(n^2)
# Space complexity: o(n)

def reverse_helper(sentence, i, j)
  while i < j
    temp = sentence[i]
    sentence[i] = sentence[j]
    sentence[j] = temp

    i += 1
    j -= 1
  end
end


def reverse_sentence(my_sentence)

  return my_sentence if my_sentence.nil?

  i = 0
  j = 0

  while j < my_sentence.length
    char = my_sentence[j]
    if char == " "
      reverse_helper(my_sentence, i, j - 1)
      i = j + 1
    end
    j += 1
  end

  reverse_helper(my_sentence, i, my_sentence.length - 1)
  reverse_helper(my_sentence, 0, my_sentence.length - 1)
end
