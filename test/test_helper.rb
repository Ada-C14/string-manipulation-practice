require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"
require_relative '../lib/reverse_sentence'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/reverse_sentence"
require_relative "../lib/sort_by_length"

