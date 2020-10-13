# A method to my_sentence the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def is_whitespace?(char)
  char =~ /\s/ ? (return true) : (return false)
end

def reverse_string!(string)
  i = 0
  j = string.length - 1
  while i < j
    string[i], string[j] = string[j], string[i]
    i += 1
    j -= 1
  end
end


def reverse_sentence(my_sentence)
  return nil if my_sentence.class != String || my_sentence.length == 0
  # First, my_sentence the string (this preserves spaces)
  reverse_string!(my_sentence)

  # Next, un-reverse each word in the string
  in_word = !(is_whitespace?(my_sentence[0]))
  word_start = in_word ? 0 : nil
  my_sentence.each_char.with_index do |char, index|
    if in_word
      next unless is_whitespace?(char)
      # It's whitespace - end and reverse the word
      word = my_sentence.slice((word_start..index-1))
      old_word = word.clone
      reverse_string!(word)
      my_sentence.sub!(old_word, word)
      in_word = false
    else # We're not in a word
      next if is_whitespace?(char) 
      # It's not whitespace - a word is starting. Update word start
      word_start = index
      in_word = true
    end
  end

  # Need to reverse the last word in the sentence manually
  if in_word && word_start
    word = my_sentence.slice((word_start..my_sentence.length))
    old_word = word.clone
    reverse_string!(word)
    my_sentence.sub!(old_word, word)
  end

  return my_sentence
end