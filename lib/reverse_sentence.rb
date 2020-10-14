# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) because n/2 reduces to n
# Space complexity: O(n) due to split method
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

  # Enclosing delimiter (what you're splitting on) in () includes it in the array
  my_words = my_sentence.split(/(\s+)/)
  length = my_words.length

  (length / 2).times do |i|
    my_words[i], my_words[length - 1 - i] = my_words[length - 1 - i], my_words[i]
  end

  return my_sentence.replace(my_words.join)
end