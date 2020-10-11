# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_sentence(my_sentence)
  return "" if my_sentence.nil? || my_sentence.empty?
  if my_sentence.split.length == 1
    return my_sentence
  else
    # Step 1: Reverse the whole String to keep all whitespaces
    idx = 0
    while idx < (my_sentence.length / 2)
      my_sentence[idx], my_sentence[my_sentence.length - idx - 1] = my_sentence[my_sentence.length - idx - 1], my_sentence[idx]
      idx += 1
    end

    # Step 2: Reverse each word in the String back to its original word
    start_idx = 0
    end_idx = 0
    while end_idx < (my_sentence.length-1)
      # call the helper method reverse_a_word to reverse each word
      if my_sentence[end_idx].match?(/\s/)
        # when the first element in the string is not a whitespace
        if end_idx > 0
          my_sentence[start_idx..(end_idx - 1)] = reverse_a_word(my_sentence[start_idx..(end_idx - 1)])
        # when the first element in the string is a whitespace
        else
          my_sentence[start_idx..(end_idx)] = reverse_a_word(my_sentence[start_idx..(end_idx)])
        end
        start_idx = end_idx + 1
      end
      end_idx += 1
    end

    # Step 3: Handle the last word
    my_sentence[(start_idx)..(my_sentence.length)] = reverse_a_word(my_sentence[(start_idx)..(my_sentence.length)])

    return my_sentence
  end
end

# Create a helper method
def reverse_a_word(word)
  idx = 0
  while idx < (word.length / 2)
    word[idx], word[(word.length - idx - 1)] = word[(word.length - idx - 1)], word[idx]
    idx += 1
  end
  return word
end

### Reverse the words in a String by using Array
# def reverse_sentence(my_sentence)
#   return "" if my_sentence.nil? || my_sentence.empty?
#   if my_sentence.split.length == 1
#     return my_sentence
#   else
#     re_sentence = my_sentence.gsub!(/\s/, "*").split(/(\*+)/)
#     idx = 0
#     while idx < (re_sentence.count / 2)
#       re_sentence[idx], re_sentence[re_sentence.count - idx - 1] = re_sentence[re_sentence.count - idx - 1], re_sentence[idx]
#       idx += 1
#     end
#
#     final_sentence = re_sentence.map do |word|
#       if word.match? (/(\*+)/)
#         word = " " * word.length
#       end
#       word
#     end
#     return final_sentence.join
#   end
# end
