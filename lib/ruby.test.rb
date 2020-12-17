
def reverse_sentence(my_sentence)
  i = 0 #lines 81 to 90 can be their own method
  # reverse_range(string, start, end)
  # reverse_range(string, 0, string.length - 1)
  while i < my_sentence.length/2
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[my_sentence.length - 1 - i]
    my_sentence[my_sentence.length - 1 - i] = temp
    i+= 1 #set at the end of the loop
  end

  i = 0
  while i < my_sentence.length
    # if we see a letter
    if my_sentence[i] != " "
      if i == 0 || my_sentence[i - 1] == " "
        start_index = i
      end

      if my_sentence[i + 1] == " " || i == my_sentence.length - 1
        end_index = i
        p my_sentence
        p start_index
        p end_index

        j = start_index
        while j < start_index + (end_index - start_index)/2
          p my_sentence
          temp = my_sentence[j]
          my_sentence[j] = my_sentence[end_index - j]
          my_sentence[end_index - j] = temp

          j+= 1 #set at the end of the loop
        end
      end
    end
    i += 1
  end
end

# input
my_sentence = "How  do  you   like     them      apples?"
# output
# "dlroW olleH"

# "Im a better engineer today"
reverse_sentence(my_sentence)
p my_sentence
