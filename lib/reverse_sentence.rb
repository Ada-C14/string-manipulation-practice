# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_sentence(my_sentence)
  return nil if my_sentence == nil

  # array = my_sentence.split(/\s+/)
  my_sentence.chars!

  i = 0
  x = array.length-1

  until i > x
    first = array[i]
    last = array[x]

    #swap
    array[i] = last
    array[x] = first

    i += 1
    x -= 1
  end

  string = array.join(" ")

  string.length.times do |i|
    my_sentence[i] = string[i]
  end

  return my_sentence

end


# my_sentence = "hello, world this is a longer sentence!!!!"
# p reverse_sentence(my_sentence)