# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return "" if my_sentence.nil?
  my_reverse(my_sentence)
  i = 0
  j = 0
  index = 0
  has_letter = false
  first_word = true

  while index < my_sentence.length
    letter = my_sentence[index]
    i += 1 if has_letter == false

    if letter == " " && (has_letter == true) && (index != my_sentence.length - 1)

      if first_word == true
        i = i - 1
        j = index - 1
        my_sentence[i..j] = my_reverse(my_sentence[i..j])
        first_word = false
      else
        i = j + 2
        j = index - 1
        my_sentence[i..j] = my_reverse(my_sentence[i..j])
      end
    elsif letter != " "
      has_letter = true
    end

    if index == my_sentence.length - 1
      if first_word == true
        j = index
        my_sentence[0..j] = my_reverse(my_sentence[0..j])
        p my_sentence
        first_word = false
      else
        i = j + 2
        j = index
        my_sentence[i..j] = my_reverse(my_sentence[i..j])
        p my_sentence
      end
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

# my_array.join(' ')
# my_sentence = "  I can do this!     "
# p my_sentence
# p my_reverse(my_sentence)
# reverse_sentence(my_sentence)

# # my_sentence = my_sentence.split(/\s/)
# sentence_copy = my_sentence.dup
# p i = my_sentence.length - 1
# j = my_sentence.length - 1
# my_str_i = 0
# while i >= 0
#   if sentence_copy[i] == " " || i == 0
#     # word found, overwrite the word to my_sentence
#     if my_str_i != 0 # insert space if not the first string
#       my_sentence[my_str_i] = " "
#       my_str_i = my_str_i + 1
#     end
#     if i == 0
#       i = -1
#     end
#     for k in (i + 1)..j
#       my_sentence[my_str_i] = sentence_copy[k]
#       my_str_i = my_str_i + 1
#     end
#     # reset j
#     j = i - 1
#   end
#   i = i - 1