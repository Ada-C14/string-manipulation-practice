# @PaulineChane on GitHub, Ada Developers Academy C14
# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) and it's tricky to explain. But I will try. I will assume the worst case scenario
#                  is "REALLYLONGSTRING REALLYLONGSTRING" where two words that are A and B characters long
#                  are separated by a single whitespace:
#                  A + B + 1 = n
#                  Initially reversing the whole string is an O(n) operation.
#                  The while loop traverses the string and is an O(n) operation for n + n = 2n.
#                  Even though str_rev! will only be called twice for two words (code skips whitespace),
#                  The first time it's called, it will be an O(A) operation with a total A calls to switch
#                  its characters, likewise an O(B) operation with B calls for the second word.
#                  this adds a total of A + B to the existing 2n calls, and at very large sizes of
#                  A and B, A + B is APPROXIMATELY equal to A + B + 1 = n for a total of 3n calls.
#                  Point being, because of how often we actually call str_rev!, we don't see what we usually do when
#                  an O(n) function is called for EVERY loop of an outer O(n) loop and because of what str_rev! does,
#                  the time complexity of reverse_sentence, if any of that made sense, should be O(n).
# Space complexity: O(1), all variables created are constants that do not depend on the length/size of the input string.
#                   In fact, we make this happen by modifying the input string and not returning a copy with our desired changes.
#                   To avoid creating a new array with a substring, str_rev! requires the endpoints of the "word"
#                   we're switching around within the input string to make direct changes.
def reverse_sentence(my_sentence)
  # filter nil, empty, single char edge cases
  if my_sentence.nil?
    return nil
  elsif my_sentence.length <= 1
    return my_sentence
  end

  # reverse all words to preserve sentences, O(n) operation
  str_rev!(my_sentence, 0, my_sentence.length)

  # iterate through string to reverse "non-white space chunks"
  lhs = 0 # leftmost character of a "word" or "whitespace block"
  rhs = lhs + 1 # rightmost character of a "word" or "whitespace block"
  is_block = false # check if we are switching between a whitespace and word block or vice versa
  # traverse one more time to find words and re-reverse them.
  while rhs < my_sentence.length
    # first two cases check if we are switching between whitespace to a word or vice-versa
    # if so, lhs and rhs carry indices marking a whitespaces or a word to be de-reversed
    if my_sentence[lhs] == " " && my_sentence[rhs] != " "
      is_block = true
    elsif my_sentence[lhs] != " " && my_sentence[rhs] == " "
      is_block = true
    end
    # de-reverse word unless word is actually a series of whitespaces
    if is_block
      # okay, since this isn't taking a substring this shouldn't count against O(1) space
      # this also doesn't count against O(n) space. please see very long attempt to explain in header.
      str_rev!(my_sentence, lhs, rhs) unless my_sentence[lhs] == " "
      lhs = rhs # set new origin point to find next "block"
      is_block = false # reset boolean
    end
    rhs += 1 # move endpoint to search for rightmost char of "block"
  end
  # fencepost to catch last word to reverse if there is one
  str_rev!(my_sentence, lhs, rhs) unless my_sentence[lhs] == " "
  # return modified input
  return my_sentence
end

# helper method to reverse characters of a string that doesn't have white spaces
# O(n) time complexity based off length of string being reverse, O(1) space complexity
# in context of reverse_sentence, this doesn't multiply upon reverse_sentence, which still keeps
# an O(n) time complexity as well. please see header.
def str_rev!(str, lhs, rhs)
  return str if str.length <= 1

  while lhs < rhs - 1
    temp = str[lhs]
    str[lhs] = str[rhs - 1]
    str[rhs - 1] = temp
    lhs += 1
    rhs -= 1
  end

  return str
end