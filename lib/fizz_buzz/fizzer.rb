require './lib/noizer'
module FizzBuzz
  class Fizzer < Noizer
    def initialize number=1, rule=lambda{|n|n %5==0}, message="Fizz"
      super number,rule, message
    end

  end

end

