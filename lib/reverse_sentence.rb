# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_string(string, i, j)
  return if string.length <= 1
  while i < j
    place_hold = string[i]
    string[i] = string[j]
    string[j] = place_hold
    i += 1
    j -= 1
  end
  return string
end

def reverse_sentence(my_sentence)

  reverse_string(my_sentence, 0, my_sentence.length - 1)

  i = 0
  j = 0
  while
  my_sentence[j] != " "
    j += 1
  end

  while i < j
    place_hold = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = place_hold
    i += 1
    j -= 1
  end



  return my_sentence

end


p reverse_sentence("Hello, world")
p reverse_sentence("Yoda is awesome!")
p reverse_sentence("    This is fine!   ")
p reverse_sentence("Hello      how are you?")