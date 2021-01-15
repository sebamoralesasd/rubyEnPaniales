=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(string)
    newString = string.gsub(/\s+/, "")

    if !(newString =~ /[^0-9]/).nil? || newString.length <= 1
      return false
    end

    cardNumbers = newString.split(//).map(&:to_i)

    # Si la cantidad de números es par, entonces la cifra más
    # significativa tiene posición impar
    isFirstDigitIndexEven = cardNumbers.length % 2

    cardNumbers.each_index { |index| 
      if (index + isFirstDigitIndexEven).even?
        newValue = cardNumbers[index] * 2
        cardNumbers[index] = newValue > 9 ? newValue - 9 : newValue
      end
    }

    (cardNumbers.reduce(:+) % 10).zero?
  end
end