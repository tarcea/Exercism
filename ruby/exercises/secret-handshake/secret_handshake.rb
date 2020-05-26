=begin
1 = wink 1
10 = double blink 2
100 = close your eyes 4
1000 = jump 8
10000 = Reverse the order of the operations in the secret handshake. 16
=end


class SecretHandshake
  def initialize(number)
    @binar = number.to_s(2).reverse.split(//).map(&:to_i)

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

a = SecretHandshake.new(31)
b = SecretHandshake.new(19)
c = SecretHandshake.new(9)
d = SecretHandshake.new(7)
e = SecretHandshake.new(5)
p a.commands
p b.commands
p c.commands
p d.commands
p e.commands
