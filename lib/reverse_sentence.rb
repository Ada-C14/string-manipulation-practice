# A method to reverse the words in a sentence, in place.
# Time complexity: O(n): n is the length of the string
# This may be O(nm) because of flatten, where n is the length of the outer array returned by scan and m is the length of the inner array of pairs produced by using the "or" operator with scan. However, m is always 2 so I believe that would make it still O(n)
# Space complexity: O(n) - n is the length of the string
def reverse_sentence(my_sentence)
  return nil unless my_sentence.is_a? String
  my_sentence.replace((reverse(my_sentence.scan(/([\S]+)|(\s+)/).flatten.compact)).join)
  return my_sentence
end

def reverse(words)
  start = 0
  finish = words.length - 1

  while start < finish

    temp = words[start]
    words[start] = words[finish]
    words[finish] = temp

    start += 1
    finish -= 1
  end

  return words
end