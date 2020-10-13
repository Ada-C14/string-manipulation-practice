# A method to reverse the words in a sentence, in place.
# Time complexity: o(n)^3
# Space complexity: o(n)^2

def reverse_sentence(my_sentence)

  if my_sentence == ""
    return []
  elsif my_sentence == nil
    return nil
  end

  words_arr = my_sentence.split(/(\s)/)

  reversed = []

    until words_arr.empty?
      reversed << words_arr.pop
    end

  new_string = reversed.join

  i = 0
  while i < new_string.length
    my_sentence[i] = new_string[i]
    i += 1
  end
  return my_sentence
end

p reverse_sentence("Bob Ross paints happy trees.")
