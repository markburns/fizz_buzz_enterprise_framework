require './lib/fizz_buzz/noizer'
require './lib/fizz_buzz/fizzer'

module FizzBuzz
  class NoizePrinter
    def initialize max_value
      (1..max_value).each do |i|
        buzz_rule = lambda{|number| number % 3 == 0}

        fizzer = Fizzer.new
        buzzer = Noizer.new i, buzz_rule, "Buzz"

        Kernel.puts("#{i}: ".tap do |m|
          m << fizzer.message_for(i)
          m << buzzer.message
        end)
      end
    end
  end
end



