# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
# i & j are pointers for the start and end of the substring you want to reverse
# if the string is “cuttlefish” and you want “elttucfish” i is 0 and j is 5

# helper method
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
  return if my_sentence.nil? #short circuit
  return "" if my_sentence.length <= 1

  reverse_string(my_sentence, 0, my_sentence.length - 1)
  word_start = 0
  word_end = 0
    until my_sentence[word_end] == " " || word_end > my_sentence.length
      word_end += 1
    end
    while word_end <= my_sentence.length
      reverse_string(my_sentence, word_start, word_end - 1)#reverse words
      word_start = word_end + 1
      word_end = word_start
        until my_sentence[word_end] == " " || word_end > (my_sentence.length - 1)
          word_end += 1
        end
    end
  return my_sentence
end

# def reverse_sentence(string)
#   split_string = string.split("")
#   reversed = []
#   string.size.times { reversed << split_string.pop }
#   reversed.join
# end
# puts reverse_sentence("hello there you")

# def reverse_sentence(string)
#   raise StandardError.new('Passed string cannot be reversed because it is empty') if string.nil? || string.empty?
#   words = string.split(" ") #splitting string into an Array of words
#   new_sentence = []
#   words.each do |word|
#     # doing the same thing as reverse_whole_string
#     # but with eah word from an array
#     end_loop = word.length
#     new_string = ''
#     while end_loop > 0
#       end_loop -= 1
#       new_string += word[end_loop] #Reversing every letter of each word
#     end
#     new_sentence << new_string # appending every word to an new Array
#     # or you could just do this: new_sentence << reverse_whole_string(word)
#   end
#   new_sentence.join(' ') #joining Array into a string delimited by spaces
# end
