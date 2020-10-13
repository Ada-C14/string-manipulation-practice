# A method to reverse the words in a sentence, in place

# Time complexity: O(n) - my reverse_from_a_to_b method does not depend on the length of my_sentence,
# the only method that is invoked and depends on the length of my_sentence is reverse_each_word_of_sentence

# Space complexity: O(1) - the length of my_sentence does does not affect the space taken up to save our variable;
# all strings take up the same space regardless of length; unlike arrays

def reverse_sentence(my_sentence)

  class << self
    def reverse_from_a_to_b(str, a, b)
      while a < b
        temp = str[a]
        str[a] = str[b]
        str[b] = temp
        a += 1
        b -= 1
      end
      return str
    end
  end

  class << self
    def reverse_each_word_of_sentence(str)
      a = 0
      b = 0
      until b == str.length
        while str[b] == ' '
          a += 1
          b += 1
        end
        while str[b] != ' ' && str[b] != nil
          b += 1
        end
        reverse_from_a_to_b(str, a, b - 1)
        a = b
      end
    end
  end

  if my_sentence.nil?
    return nil
  else
    reverse_each_word_of_sentence(my_sentence)
    reverse_from_a_to_b(my_sentence, 0, my_sentence.length - 1)
  end
end

# sentence = "This is an example of a sentence."
# puts reverse_sentence(sentence)
# puts sentence
