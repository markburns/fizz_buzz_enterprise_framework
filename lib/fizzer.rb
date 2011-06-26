require './lib/noizer'
class Fizzer < Noizer
  def initialize number=1, rule=lambda{|n|n %5==0}, message="Fizz"
    super number,rule, message
  end

  def message_for number
    @number = number
    message
  end
end


