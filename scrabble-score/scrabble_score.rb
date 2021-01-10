=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end


class Scrabble
  def initialize(word)
    @word = word
  end

  def score()
    score = 0

    if @word.nil?
      return score
    end

    keys = @word.downcase.scan(/[a-z]/)

    countHash = Hash.new(0)
    keys.each { |key| countHash[key] += 1 }

    letterValue = 0

    countHash.each { |key, value|
      case key
      when /a|e|i|o|u|l|n|r|s|t/
        letterValue = 1
      when /d|g/
        letterValue = 2
      when /b|c|m|p/
        letterValue = 3
      when /f|h|v|w|y/
        letterValue = 4
      when /k/
        letterValue = 5
      when /j|x/
        letterValue = 8
      when /q|z/
        letterValue = 10
      end

      score += letterValue * value
    }

    return score
  end


def self.score(word)
  instance = Scrabble.new(word)
  instance.score()
end

end