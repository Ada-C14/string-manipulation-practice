# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_sentence(my_sentence) # TODO I dont know why tests here dont match unit tests
  return nil if my_sentence.nil?
  return "" if my_sentence.empty?

  array = my_sentence.split(/(\s+)/) # O(n) Time where n is size of array created by my_sentence.split... | O(n) Space as well
  aux_array = []
  array.length.times do # + another O(n) Time
    aux_array << array.pop # + another O(n) Space
  end

my_sentence[0...my_sentence.length] = aux_array.join[0...my_sentence.length] # + O(n) Time
end

# Final Time complexity: O(n) + O(n) + O(n) = O(3n), drop constant is O(n)
# Final Space complexity: O(n) + O(n) = O(2n), drop constant is O(n)

# TESTING --->
puts "split by whitespace"
pp "Yoda is awesome!".split(/(\s+)/)
puts "reverse -->"
pp reverse_sentence("Yoda is awesome!")
pp reverse_sentence("I'm a better engineer today than I was yesterday.")
test_string = ""

pp reverse_sentence(test_string)

test_string = nil

pp reverse_sentence(test_string)

test_string = "world"

pp reverse_sentence(test_string)

test_string = "How  do  you   like     them      apples?"

pp reverse_sentence(test_string)









