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

#######################################
#### 2nd way of doing it - return the beginning/end indexes for each non-whitespace group and then swap in place

# def reverse_word(start_index, end_index, string) #start_index = 13, end_index = 17, actual is 16
#   length = end_index - start_index #length is 4
#   i = 0
#   start = start_index.clone #need hard copy of the starting index for the comparison in the while statement
#   while start_index < (start + (length / 2)) #half way between the start & end index
#     temp = string[end_index - 1 - i] #ending index
#     string[end_index - 1 - i] = string[start_index] #last index value is reassigned to first
#     string[start_index] = temp #first index value is reassigned to last (temp)
#     i += 1
#     start_index += 1
#     p string
#   end
# end
#
# # idea is to reverse the string element by element
# # and then find just the "words" (non-whitespace characters) and reverse the words back in place
# def reverse_sentence(my_sentence)
#   return nil if my_sentence.nil?
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
#   # https://stackoverflow.com/questions/5241653/ruby-regex-match-and-get-positions-of
#   start_positions = my_sentence.enum_for(:scan, /[^\s]+/).map { Regexp.last_match.begin(0) } #returns an array of all the starting indexes for the matches
#
#   end_positions = my_sentence.enum_for(:scan, /[^\s]+/).map { Regexp.last_match.end(0) } #returns an array of the "ending" indexes, really the index 1 AFTER the match
#
#   start_positions.each_with_index do |start_index, index|
#     p start_index
#     p end_positions[index]
#     reverse_word(start_index, end_positions[index], my_sentence)
#   end
#   p my_sentence
# end

#####################################
#### 3rd way - without using regex methods

def reverse_word(start_index, length, string) #start index 0, length 7, actual index 6
  end_index = start_index + length - 1
  i = 0
  start = start_index.clone #need hard copy of the starting index for the comparison in the while statement

  while start_index < (start + (length / 2)) #half way between the start & end index
    temp = string[end_index - i] #ending index
    string[end_index - i] = string[start_index] #last index value is reassigned to first
    string[start_index] = temp #first index value is reassigned to last (temp)
    i += 1
    start_index += 1
    p string
  end
end

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

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

  p my_sentence

  return my_sentence
end

reverse_sentence("How  do  you   like     them      apples?")
