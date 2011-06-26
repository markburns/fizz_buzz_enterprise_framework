class Fizzer
  attr_accessor :number
  def initialize number
    @number = number
  end
end

class Buzzer
  attr_accessor :number
  def initialize number
    @number = number
  end
end

class FizzBuzzPrinter
  def initialize max_value
    (1..max_value).each do |i|
      fizzer = Fizzer.new i
      buzzer = Buzzer.new i
      fizz = fizzer.number % 5 == 0
      buzz = buzzer.number % 3 == 0

      puts("#{i}: ".tap do |m|
        m << "Fizz" if fizz
        m << "Buzz" if buzz
      end)
    end
  end
end

class Main
  def self.run! max
    FizzBuzzPrinter.new max
  end
end

usage = <<EOF
  Usage:

  ruby fizz_buzz.rb <value>

  <value> is the number to rub Fizz Buzz up to
EOF

max_value = ARGV[0].to_i
puts usage unless max_value > 0

Main.run! max_value
