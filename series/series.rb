=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(serie)
    @serie = serie
  end

  def slices(length)
    if length > @serie.length
      raise ArgumentError
    end

    slicesList = []
    i = 0
    
    while i <= @serie.length - length 
      slicesList = slicesList + [@serie[i, length]]
      i = i + 1
    end

    return slicesList

  end

end