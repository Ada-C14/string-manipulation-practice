# A method to reverse the words in a sentence, in place.
# Time complexity: O(n*m) where n is the length of the sentence and m is the length of the longest word
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil?

  first_index = 0
  last_index = my_sentence.length - 1
  reverse(my_sentence, first_index, last_index)

  i = 0
  word_length = 0

  while i < my_sentence.length - 1
    until my_sentence[i] == " " || my_sentence[i].nil?
      word_length += 1
      i += 1
    end

    if word_length > 0
      index_when_word_starts = i - word_length
      index_when_word_ends = i - 1

      # index_after_word_ends = i
      # my_sentence[index_when_word_starts...index_after_word_ends] = reverse(my_sentence[index_when_word_starts...index_after_word_ends])
      # "Note that my_sentence[index_when_word_starts...index_after_word_ends] creates a new array which is a copy of the original O(n) space complexity." - Chris
      # "You can get O(1) space complexity passing the indexes between which you want to reverse instead." - Chris

      reverse(my_sentence, index_when_word_starts, index_when_word_ends)

      word_length = 0
    end

    while my_sentence[i] == " "
      i += 1
    end
  end
end

# Helper method to reverse
# Time complexity: O(n) where n is the length of the sentence
# Space complexity: O(1)
def reverse(my_sentence, first_index, last_index)
  return if my_sentence.nil?

  i = first_index
  j = last_index

  while i < j
    temporary_value_holder = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temporary_value_holder

    i += 1
    j -= 1
  end

  return my_sentence
end