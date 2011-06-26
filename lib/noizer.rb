class Noizer
  attr_accessor :number, :rule, :message
  def initialize number, rule, message
    @number, @rule, @message = number, rule, message
  end

  def message
    show_message? ? @message : ""
  end

  def show_message?
    rule.call @number
  end
end


