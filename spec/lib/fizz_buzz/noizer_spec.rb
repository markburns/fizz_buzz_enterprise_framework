require './lib/fizz_buzz/noizer'

describe FizzBuzz::Noizer do
  it "initializes" do
    lambda{FizzBuzz::Noizer.new }.should raise_error ArgumentError
    lambda{FizzBuzz::Noizer.new 10}.should raise_error ArgumentError
    lambda{FizzBuzz::Noizer.new 10, lambda{true}, "Fizz"}.should_not raise_error ArgumentError
  end

  it "has a number" do
    @noizer = FizzBuzz::Noizer.new 10,lambda{true}, "Fizz"
    @noizer.number.should == 10
  end

  it "has a rule" do
    rule = lambda{true}
    @noizer = FizzBuzz::Noizer.new 10,rule, "Fizz"
    @noizer.rule.should == rule
  end

  it "has a display message dependent on the rule" do
    @noizer = FizzBuzz::Noizer.new 10, lambda{|n| false}, "Fizz"
    @noizer.message.should == ""

    @noizer = FizzBuzz::Noizer.new 10, lambda{|n| true}, "Fizz"
    @noizer.message.should == "Fizz"

  end

  it "shows a message for any number" do
    @buzzer = FizzBuzz::Noizer.new 10, lambda{|n| n==3}, "Noize"

    @buzzer.message_for(3).should == "Noize"
    @buzzer.message_for(5).should == ""
  end
end
