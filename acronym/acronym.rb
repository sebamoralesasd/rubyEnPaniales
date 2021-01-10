=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(phrase)
=begin
\b -> Matches word boundaries when outside brackets; 
backspace (0x08) when inside brackets
\w -> A word character ([a-zA-Z0-9_])
=end
    return phrase.scan(/\b\w/).join.upcase

  end
end