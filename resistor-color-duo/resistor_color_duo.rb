=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
  def self.colorValue(color)
    case color
    when "brown"
      return 1
    when "black"
      return 0
    when "blue"
      return 6
    when "grey"
      return 8
    when "yellow"
      return 4
    when "violet"
      return 7
    when "orange"
      return 3
    when "green"
      return 5
    end
  end

  def self.value(colors)
    return self.colorValue(colors[0]) * 10 + self.colorValue(colors[1])
  end
end