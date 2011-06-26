class Noizer
  attr_accessor :number, :rule
  def initialize number, rule
    @number, @rule = number, rule
  end

  def show_message?
    rule.call @number
  end
end


