require_relative "test_helper"

describe "reverse sentence" do
  describe "basic tests" do
    it "reverse a sentence with two words" do
      test_string = "hello, world"

      answer = reverse_sentence(test_string)

      expect(test_string == "world hello," || answer == "world hello,").must_equal true
    end

    it "reverse a sentence with three words" do
      test_string = "Yoda is awesome!"

      answer = reverse_sentence(test_string)

      expect(test_string == "awesome! is Yoda" || answer == "awesome! is Yoda").must_equal true
    end
  end

  # check for edge cases
  describe "edge cases" do
    # if it's a string parameter, check for empty
    it "reverse an empty sentence" do
      test_string = ""

      answer = reverse_sentence(test_string)

      expect(test_string == "" || answer == "").must_equal true
    end

    # if the parameter is an object, check for nil
    it "nil object passed to sentence reverse" do
      test_string = nil

      answer = reverse_sentence(test_string)

      expect(test_string == nil || answer == nil).must_equal true
    end

    it "reverse a sentence with one word" do
      test_string = "world"

      answer = reverse_sentence(test_string)

      expect(test_string == "world" || answer == "world").must_equal true
    end

    it "reverse a sentence with multiple words" do
      test_string = "I'm a better engineer today than I was yesterday."

      answer = reverse_sentence(test_string)

      expect(test_string == "yesterday. was I than today engineer better a I'm" || answer == "yesterday. was I than today engineer better a I'm").must_equal true
    end

    it "reverse a sentence with multiple spaces between words" do
      test_string = "How  do  you   like     them      apples?"

      answer = reverse_sentence(test_string)

      expect(test_string == "apples?      them     like   you  do  How" || answer == "apples?      them     like   you  do  How").must_equal true
    end

    it "reverse a sentence with preceeding and trailing white spaces" do
      test_string = "  I can do this!     "

      answer = reverse_sentence(test_string)

      expect(test_string == "     this! do can I  " || answer == "     this! do can I  ").must_equal true
    end
  end
end
