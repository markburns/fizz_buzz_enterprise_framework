require './lib/fizzer'
require './lib/buzzer'

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


