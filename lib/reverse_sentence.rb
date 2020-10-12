# A method to reverse the words in a sentence, in place.
# Time complexity: O(n*m) (where n is the length of the string and m is the length of the longest word in the string)
# Space complexity: O(1) (the same number of variables are created at the same length regardless of input)

def reverse_sentence(my_sentence)

  return "" if my_sentence == nil || my_sentence.length == 0
  return my_sentence if my_sentence.match(/\s/) == nil

  # reverse entire string in place
  i = 0
  j = my_sentence.length - 1

  while i < j
    hold = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = hold

    i += 1
    j -= 1
  end

  white_space = /\s/
  non_white_space = /\S/

  # find the first letter of individual word in the string
  m = 0
  while my_sentence[m].match(white_space)
    m += 1
  end

  while m < my_sentence.length - 1

    # find the end of the individual word
    n = m + 1
    while n < my_sentence.length && my_sentence[n].match(non_white_space)
      n += 1
    end
    n == my_sentence.length - 1 ? o = n : o = n - 1

    # reverse the individual word in place
    while m < o
      hold = my_sentence[m]
      my_sentence[m] = my_sentence[o]
      my_sentence[o] = hold

      m += 1
      o -= 1
    end

    # find the first letter of the next word
    m = n
    while m < my_sentence.length && my_sentence[m].match(white_space)
      m += 1
    end
  end

  return my_sentence
end
