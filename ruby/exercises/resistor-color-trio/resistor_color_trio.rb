=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end

class ResistorColorTrio
  # attr_reader :color1, :color2, :color3
  def initialize(colors)
    @color1 = colors.first
    @color2 = colors[1]
    @color3 = colors.last
  end

  def label
    if calcul.to_i < 1000
      "Resistor value: #{calcul} ohms"
    elsif calcul.to_i >= 1000 && calcul.to_i < 1000000
      "Resistor value: #{calcul.delete_suffix('000')} kiloohms"
    end
  end

  private
  # attr_reader :color1, :color2, :color3
  def calcul
    raise ArgumentError.new('invalid color, bai animalule...') unless valid_color
    code.find_index(@color3) == 0 ? zero = '' : zero = '0' * code.find_index(@color3)
    "#{code.find_index(@color1)}#{code.find_index(@color2)}#{zero}"
  end

  def valid_color
    code.include?(@color1) && code.include?(@color2) && code.include?(@color3)
  end

  def code
    ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']
  end
end

# res = ResistorColorTrio.new(["orange", "orange", "black"])
# p res.label
