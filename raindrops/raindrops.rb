=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(number)
    raindrop = ""

    if number % 3 == 0
      raindrop += "Pling"
    end

    if number % 5 == 0
      raindrop += "Plang"
    end

    if number % 7 == 0
      raindrop += "Plong"
    end

    return raindrop.length == 0 ? number.to_s : raindrop
  end

end