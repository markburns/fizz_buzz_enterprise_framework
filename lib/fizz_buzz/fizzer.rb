require './lib/fizz_buzz/noizer'
module FizzBuzz
  class Fizzer < Noizer
    def initialize number=1, rule=nil, message="Fizz"
      rule ||= lambda{|n| n % 5 == 0}
      super number,rule, message
    end

  end

end

