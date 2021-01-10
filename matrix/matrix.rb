=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(matrixString)
    matrixStr = matrixString.split("\n").map { |str| str.split(" ") }

    @matrix = matrixStr.map {|strArr| strArr.map {|str| str.to_i } }

  end

  def rows()
    return @matrix
  end

  def columns()
    return @matrix.transpose
  end
end