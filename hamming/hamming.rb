=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(dnaA, dnaB)
    if dnaA.length != dnaB.length
      raise ArgumentError
    end

    count = 0

    for i in 0..dnaA.length
      count += dnaA[i] != dnaB[i] ? 1 : 0
    end

    return count
  end
end