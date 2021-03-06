=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count()
    keys = @phrase.scan(/\b[\w']+\b/)
    countHash = Hash.new(0)

    keys.each { |key| countHash[key] += 1 }

    return countHash

  end
end