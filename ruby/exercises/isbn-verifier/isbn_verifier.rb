=begin
Write your code for the 'ISBN Verifier' exercise in this file. Make the tests in
`isbn_verifier_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isbn-verifier` directory.
=end

class IsbnVerifier
  def self.valid?(isbn)
    array = isbn.split(//)
    return false if array.empty?
    array.delete('-')
    array[-1] == 'x' || array[-1] == 'X' ? array[-1] = '10' : array
    return false unless array.length == 10 && array[-1][/([0-9]*)/]
    calc = 0
    array.each_with_index do |el, ind|
      return false unless el[/([0-9]*)/] != ""
      calc += (el.to_i * (ind + 1))
    end
    calc % 11 == 0
  end
end

# p IsbnVerifier.valid?('3-598-21507-X')
