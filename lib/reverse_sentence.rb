require 'strscan'
# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O()

# def reverse_words(array_of_words)
#   array_of_words.each do |word|
#     # reverse word
#     i = 0
#     length = word.length
#
#     while i < length / 2
#       temp = word[length - 1 - i ]
#       word[length - 1 - i ] = word[i]
#       word[i] = temp
#       i += 1
#     end
#   end
#
#   return array_of_words
# end
#
# def reverse_sentence(my_sentence)
#   return nil if my_sentence.nil?
#   # idea is to reverse the string element by element
#   # and then find just the "words" (non-whitespace characters) and reverse the words back in place
#
#   length = my_sentence.length
#   i = 0
#   while i < (length/2)
#     temp = my_sentence[length - 1 - i]
#     my_sentence[length - 1 -i] = my_sentence[i]
#     my_sentence[i] = temp
#
#     i += 1
#     p my_sentence
#   end
#   # string is now reversed - "dlrow ,olleh"
#
#   words = my_sentence.scan(/[^\s]+/) # an array of sets of non-whitespace (words)
#   p words
#   dup_words = words.map {|word| word + ""} # needed hard copy so that I can still reference original backwards words when searched and replace with .gsub!
#   reversed_words = reverse_words(dup_words)
#   p reversed_words
#
#   words.each_with_index do |word, index|
#     my_sentence.gsub!(word, reversed_words[index])
#   end
#   p my_sentence
#
#   return my_sentence
# end


# def reverse_words(word)
#   i = 0
#   length = word.length
#
#   while i < length / 2
#     temp = word[length - 1 - i ]
#     word[length - 1 - i ] = word[i]
#     word[i] = temp
#     i += 1
#   end
#
#   return word
# end
#
# def reverse_sentence(my_sentence)
#   return nil if my_sentence.nil?
#   # idea is to reverse the string element by element
#   # and then find just the "words" (non-whitespace characters) and reverse the words back in place
#
#   length = my_sentence.length
#   i = 0
#   while i < (length/2)
#     temp = my_sentence[length - 1 - i]
#     my_sentence[length - 1 -i] = my_sentence[i]
#     my_sentence[i] = temp
#
#     i += 1
#     p my_sentence
#   end
#   # string is now reversed - "dlrow ,olleh"
#
#   # match_data = my_sentence.match(/[^\s]+/)
#   # p match_data ##=> #<MatchData "!dlrow">
#
#   # https://stackoverflow.com/questions/5241653/ruby-regex-match-and-get-positions-of
#   positions = my_sentence.enum_for(:scan, /[^\s]+/).map { Regexp.last_match.begin(0) }
#   p positions # prints the starting positions of the 2 matches?
#
#   p positions_end = my_sentence.enum_for(:scan, /[^\s]+/).map { Regexp.last_match.end(0) }
#
#   my_sentence.scan(/[^\s]+/) { |match| puts "Found match #{match}, reversed #{reverse_words(match)}" }
#
#   m = /[^\s]+/.match(my_sentence)
#   p m
#   p m.begin(0)
#   p m.end(0) ##=> returns 6, the index after end of the matched word
#
#   puts "Scanning string start:::::"
#   scan_string = StringScanner.new(my_sentence, dup = false)
#
#   p scan_string.match?(/[^\s]+/) # returns index after the end of the matched word
#   p scan_string.matched
#   p scan_string.match?(/[\s]+/)
#   p scan_string.matched
#   puts "scan string end"
#
#
#   # until scan_string.eos?
#     # scan_string.scan_until(/[^\s]+/)
#
#
#     # ###*****try these two lines
#     # scan_string.skip(/[\s]+/)
#     # p reverse_words(scan_string.scan(/[^\s]+/))
#
#     # p reverse_words(scan_string.scan(/[^\s]+/))
#     # ####does not change my_stentence, but it DOES work to reverse the matches to that regex, returns each word reversed ***************************
#
#     # scan_string.scan(/[^\s]+/)
#
#     # word = scan_string.scan(/[^\s]+/).clone #don't do the reverse helper on this because it will change the memory address
#     # #
#     # scan_string.skip(/[\s]+/)
#     # my_sentence.gsub!(scan_string.scan(/[^\s]+/), reverse_words(word))
#
#
#     # p word
#   # end
#
#   # "dlrow world"
#   p my_sentence
#
#   return my_sentence
# end


def reverse_word(start_index, length, string) #start index 7, length 6 ***SOMETHING IS OFF HERE WITH THE LENGTH
  i = start_index
  while i < (start_index + (length / 2))
    temp = string[(start_index + length) - 1 - i ]
    string[(start_index + length) - 1 - i ] = string[i]
    string[i] = temp
    i += 1
  end
  #return string
end

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  # idea is to reverse the string element by element
  # and then find just the "words" (non-whitespace characters) and reverse the words back in place

  length = my_sentence.length
  i = 0
  while i < (length/2)
    temp = my_sentence[length - 1 - i]
    my_sentence[length - 1 -i] = my_sentence[i]
    my_sentence[i] = temp

    i += 1
  end
  p my_sentence
  # string is now reversed - "dlrow ,olleh"

  start_index = 0
  length = 0
  in_word = false
  sen_length = my_sentence.length
  p sen_length
  my_sentence.each_char.with_index do |item, index|
    #the first non-white space character
    if item.strip.empty? && !in_word #when item == whitespace
      start_index += 1
    end

    if !item.strip.empty? #when item != whitespace
      length += 1
      in_word = true
    end

    if in_word && item.strip.empty? #when item == whitespace
      reverse_word(start_index, length, my_sentence) #start index 0, length 3, current index 2
      start_index = index + 1
      length = 0
      in_word = false
    end

    if in_word && (sen_length - 1) == index
      reverse_word(start_index, length, my_sentence)
      p my_sentence
    end

    puts "****** item #{item}"
    puts "start index #{start_index}"
    puts "length #{length}"
    puts "index #{index}"
    p in_word
    #reverse word in place
  end

  end_index = start_index + length

  p start_index
  p end_index

  p my_sentence

  return my_sentence
end

reverse_sentence("Hello, world!")
