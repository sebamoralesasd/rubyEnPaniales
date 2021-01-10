=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
  def self.isogram?(input)
    keys = input.downcase.scan(/[a-z]/)

    countHash = Hash.new(0)
    keys.each { |key| countHash[key] += 1 }

    return countHash.all? { |key, value| value == 1 }
  end
end