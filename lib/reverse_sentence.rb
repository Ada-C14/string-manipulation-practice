# A method to reverse the words in a sentence, in place.
# Time complexity: O(n * m) My outer loop is dependent on the length of my sentence (n)
# the reverse_string method call which has another loop that is based on the length of a the current word (m).
# Space complexity: O(1) because we're not creating and assigning new strings or substrings anywhere inside our method
def reverse_sentence(my_sentence)

  #return the sentence if it's nil, a single word, or a single character.
  return my_sentence if my_sentence.nil? || !my_sentence.match(/\s/) || my_sentence.length == 1

  reverse_string(0, my_sentence.length - 1, my_sentence)

  j = 0
  i = 0
  while j < my_sentence.length

    # if i'm at the beginning of a word, save the index to i
    if my_sentence[j].match(/\S/) && my_sentence[j-1].match(/\s/) && i != j
      i = j
    end

    # if i'm at the end of a word, call reverse_string to flip the characters.
    if my_sentence[j].match(/\S/) && (my_sentence[j+1].nil? || my_sentence[j+1].match(/\s/)) && i != j
      reverse_string(i, j, my_sentence)
    end
    j += 1
  end
end

def reverse_string(a, b, string)
  until a >= b
    temp = string[a]
    string[a] = string[b]
    string[b] = temp
    a += 1
    b -= 1
  end
end

