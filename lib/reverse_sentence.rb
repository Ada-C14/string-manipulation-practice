# A method to reverse the words in a sentence, in place.
# Time complexity: o(n)
# Space complexity: o(n)
def reverse_sentence(my_sentence)
  if my_sentence.class == String
    separated_words = my_sentence.split(/\s/).select { |k| k != "" }
    separated_space = my_sentence.split(/\S/).select { |k| k != "" }

    first = nil
    second = nil
    if my_sentence.start_with?(/\S/)
      first = separated_words
      second = separated_space
    else
      first = separated_space
      second = separated_words
    end

    counter = 0
    separated = []
    first.each do |chars|
      separated << chars
      if second[counter] != nil
        separated << second[counter]
      end
      counter += 1
    end

    reversed = ""
    reverse_counter = 0
    while reverse_counter < separated.length
      reversed << separated[separated.length - 1 - reverse_counter]
      reverse_counter += 1
    end
  end
  return reversed
end
