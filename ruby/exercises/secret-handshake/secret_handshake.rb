=begin
1 = wink 1
10 = double blink 2
100 = close your eyes 4
1000 = jump 8
10000 = Reverse the order of the operations in the secret handshake. 16
=end


class SecretHandshake
  attr_reader :binar
  def initialize(number)
    @binar = number.to_s(2).reverse.split(//).map(&:to_i)
    rescue ArgumentError
    @binar = 0
  end

  def commands
    h = []
    (0..3).each do |i|
      if @binar[i] == 1
      h << mes[i]
      end
    end
    if @binar[4] == 1
      h.reverse
    else
      h
    end
  end

  def mes
    ['wink', 'double blink', 'close your eyes', 'jump']
  end
end
