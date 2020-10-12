# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

# def reverse(array)
#   return if array.length <= 1
#   i = 0
#   j = array.length - 1
#   while i < j
#     place_hold = array[i]
#     array[i] = array[j]
#     array[j] = place_hold
#     i += 1
#     j -= 1
#   end
#   return array
# end
#
def reverse_sentence(my_sentence)
#   my_sentence = reverse(my_sentence)

  # reversal = ""
  # word = ""
  #
  # my_sentence.each_char do |letter|
  #   if letter != /\s/
  #     word << letter
  #     elsif letter == ""
  #     reversal = reversal + "" + word
  #     end
  #   else
  #     reversal = letter + reversal
  #
  #   end
  # end

  # index = 0
  # while index < my_sentence.length
  #   reversal = my_sentence[index] + reversal
  #   index += 1
  # end

  # word = " "
  # sentence = my_sentence.split(" ")
  # sentence.each do |character|
  #   if character.empty? reversal << " "
  #   else word << character
  #   reversal << word
  #   end
  # end

  # *******closest one so far!!
  reversal = []
  sentence = my_sentence.split(" ")
  sentence.size.times { reversal << sentence.pop }
  reversal = reversal.join(" ")
  #**********
  # reversal = ""
  #
  #   my_sentence.each_char do |character|
  #     if character == " "
  #       reversal << " "
  #     else
  #       until character == " "
  #         # word = ""
  #         # word << character
  #         reversal << character
  #       end
  #     end
  #   end

  # reversal = ""
  # word = ""
  #
  # my_sentence.each_char do |character|
  #   if character != " "
  #     word << character
  #     reversal.prepend(character)
  #   else character
  #   reversal << " "
  #   end
  # end
    return reversal

end


  p reverse_sentence("Hello, world")
  p reverse_sentence("Yoda is awesome!")
  p reverse_sentence("    This is fine!   ")
p reverse_sentence("Hello      how are you?")