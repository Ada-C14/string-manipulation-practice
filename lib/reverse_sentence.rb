# A method to reverse the words in a sentence, in place.
# Time complexity: O(n): there are two loops, first loop is O(n/2) and the second loop is O(n).
#                        So, O(n/2) + O(n) --> O(n)
# Space complexity: O(1): In the first loop on line 16, it reverses the string in place.
#                         In the second loop on line 24, the helper method "reverse_a_word" reverses each word in place,
#                         and the reversed word replaces the original String[x..y], it's in place replacement.
#                         Plus extra variables, overall, the space complexity is a constant.

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
    while end_idx < (my_sentence.length - 1)
      # call the helper method reverse_a_word to reverse the words
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

# Create a helper method to reverse the reversed word
def reverse_a_word(word)
  idx = 0
  while idx < (word.length / 2)
    word[idx], word[(word.length - idx - 1)] = word[(word.length - idx - 1)], word[idx]
    idx += 1
  end
  return word
end

### Reverse the String by using Array
# Time complexity: O(n): one loop depends on the string length, the time complexity is O(n)
# Space complexity: O(n): the split method used for the variable "re_sentence" generates a O(n) space complexity.
#                         Plus extra variables, the space complexity is O(n)

# def reverse_sentence(my_sentence)
#   return "" if my_sentence.nil? || my_sentence.empty?
#   if my_sentence.split.length == 1
#     return my_sentence
#   else
#     re_sentence = my_sentence.split(/(\s+)/)
#
#     idx = re_sentence.length - 1
#     start_idx = 0
#     end_idx = 0
#     while idx >= 0
#       end_idx += re_sentence[idx].length - 1
#       my_sentence[start_idx..end_idx] = re_sentence[idx]
#       start_idx = end_idx + 1
#       end_idx += 1
#       idx -= 1
#     end
#     return my_sentence
#   end
# end
