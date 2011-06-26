#Every 5th number say Fizz. Every 3rd say Buzz. Both say FizzBuzz
usage = <<EOF
  Usage:

  ruby fizz_buzz.rb <value>

  <value> is the number to rub Fizz Buzz up to
EOF

max_value = ARGV[0].to_i
puts usage unless max_value > 0

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
