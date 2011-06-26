require './lib/noizer'

class NoizePrinter
  def initialize max_value
    (1..max_value).each do |i|
      fizz_rule = lambda{|number| number % 5 == 0}
      buzz_rule = lambda{|number| number % 3 == 0}

      fizzer = Noizer.new i, fizz_rule, "Fizz"
      buzzer = Noizer.new i, buzz_rule, "Buzz"

      Kernel.puts("#{i}: ".tap do |m|
        m << fizzer.message if fizzer.show_message?
        m << buzzer.message if buzzer.show_message?
      end)
    end
  end
end


