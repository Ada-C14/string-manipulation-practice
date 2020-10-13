# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O()

#####################################
# # idea is to reverse the string element by element
# # and then find just the "words" (non-whitespace characters) and reverse the words back in place
###################################
#### My 3rd way - without using any regex methods

# Time complexity: O(n) - it iterates halfway through the string to initially reverse it, and then iterates through the entire array again to find/reverse non-white space groups
# Space complexity: O(1) - create some temp variables (single string characters) for reversing logic

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
    #p string
  end
end

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

  sen_length = my_sentence.length
  i = 0
  while i < (sen_length / 2)
    temp = my_sentence[sen_length - 1 - i]
    my_sentence[sen_length - 1 - i] = my_sentence[i]
    my_sentence[i] = temp

    i += 1
  end
  # string is now reversed - "dlrow ,olleh"

  start_index = 0
  length = 0 # will be the length of the non-white space group of characters
  in_word = false

  my_sentence.each_char.with_index do |item, index|
    # the first non-white space character
    if item.strip.empty? && !in_word ## when item == whitespace
      start_index += 1
    end

    if !item.strip.empty? # #when item != whitespace
      length += 1
      in_word = true
    end

    if in_word && item.strip.empty? # #when item == whitespace
      reverse_word(start_index, length, my_sentence) # start index 0, length 3, current index 2
      start_index = index + 1
      length = 0
      in_word = false
    end

    if in_word && (sen_length - 1) == index # #if in word is true we're at the end of the string
      reverse_word(start_index, length, my_sentence)
    end
    # puts "****** item #{item}"
    # puts "start index #{start_index}"
    # puts "length #{length}"
    # puts "index #{index}"
    # p in_word
  end
  #p my_sentence
end

#######################################
#### My 2nd way of doing it - return the beginning/end indexes for each non-whitespace group via regex scan method and then swap in place via helper method

# Time complexity: O(n) - it iterates halfway through the string to initially reverse it, but then iterates through the entire array once (like?) for the regex beginning index and once for the regex ending value. and then itereates through the beginning/ending pair of values to find/reverse non-white space groups
# Space complexity: O(1) or is it O(n)? - in addition to the temp variables, I do create 2 arrays of the words indexes... i suppose with longer strings, those arrays would be longer

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
# My 1st way of doing it - first reverse the sentence.  Then use regex to return an array of the non-whitespace groupings, must save this as a hard copy so that I can use it to replace with the reverse use .gsub.

# Time Complexity: O(n) - I do not think there are any nested loops, but I do iterate through the string and array of words several times
# Space Complexity; O(n)? - I do rely on 2 parallel arrays of the word groupings


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

#reverse_sentence("How  do  you   like     them      apples?")
