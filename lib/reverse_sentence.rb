# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) because there is one loop that depends on the size of my_sentence
# Space complexity: O(n) because the size of the words array depends on the size of my_sentence
def reverse_sentence(my_sentence)
  if my_sentence.nil? || my_sentence.empty?
    return my_sentence
  end

  words = my_sentence.split(/(\s+)/)

  first = 0
  last = words.length - 1

  while first < last
    temp = words[first]
    words[first] = words[last]
    words[last] = temp
    first += 1
    last -= 1
  end

  my_sentence[0...my_sentence.length] = words.join[0...my_sentence.length]
  return my_sentence
end

p reverse_sentence("hello, world")
p reverse_sentence("Yoda is awesome!")
p reverse_sentence("I'm a better engineer today than I was yesterday.")
p reverse_sentence("How  do  you   like     them      apples?")
p reverse_sentence("  I can do this!     ")
