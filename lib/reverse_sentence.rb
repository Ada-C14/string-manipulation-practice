# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the length of my_sentence -- builds aux. arrays w/ size based on n size?
# Space complexity: O(n) where n is the length of my_sentence -- builds aux. arrays w/ size based on n size?

def reverse_sentence(my_sentence) # TODO I dont know why tests here dont match unit tests
  return nil if my_sentence.nil?
  return "" if my_sentence.empty?

  array = my_sentence.split(/(\s+)/)
  aux_array = []
  array.length.times do
    aux_array << array.pop
  end

my_sentence[0...my_sentence.length] = aux_array.join[0...my_sentence.length]
end











