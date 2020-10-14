# you'll design and implement one of the well-known string manipulation methods. Remember that a string is an array of characters. Algorithms that worked on restricted arrays will work on strings as well.
#
# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence == ""
    return ""
  end

  if my_sentence == nil
    return nil
  end

  #creating another array of separate characters
  array_of_chars = []
  temp = 0
  my_sentence.each_char do |char|
    array_of_chars << char
  end
  # puts "#{array_of_chars}"

  #reversing all separate chars in array
  i = 0
  temp = ""
  length = array_of_chars.length

  while i < length / 2
    temp = array_of_chars[i]
    array_of_chars[i] =  array_of_chars[length - 1 - i]
    array_of_chars[length - 1 - i] = temp
    i += 1
  end
  # puts "#{array_of_chars}"


  #reversing each separate word in the array of characters
  i = 0
  word_begin = 0
  word_end = 0
  while i < array_of_chars.length
    #checking if there are spaces, and move forward until meet something else
    while i < array_of_chars.length && array_of_chars[i] == " "
      i += 1
    end
    word_begin = i

    #defining a beginning and end of the word
    while i < array_of_chars.length && array_of_chars[i] != " "
      i += 1
    end
    word_end = i - 1

    #reversing characters in the word
      while  word_begin < word_end
        temp = array_of_chars[word_begin]
        array_of_chars[word_begin] = array_of_chars[word_end]
        array_of_chars[word_end] = temp
        word_begin += 1 #moving forward beginning of the word
        word_end -= 1 #moving back end of the word
      end
  end
  # puts "#{array_of_chars}"
  reversed_sentence = array_of_chars.join

  return reversed_sentence
end

puts my_sentence = "Yoda is awesome!"
p "#{reverse_sentence(my_sentence)}"

# "awesome! is Yoda"
# "  I can do this!     "

