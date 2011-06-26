require './lib/fizz_buzz/noizer'
module FizzBuzz
  class Buzzer < Noizer
    def initialize number=1, rule=lambda{|n|n %3==0}, message="Buzz"
      super number,rule, message
    end

    def message_for number
      @number = number
      message
    end

  end

end

