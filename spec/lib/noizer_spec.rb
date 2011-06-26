require './lib/noizer'

describe Noizer do
  it "initializes" do
    lambda{Noizer.new }.should raise_error ArgumentError
    lambda{Noizer.new 10}.should raise_error ArgumentError
    lambda{Noizer.new 10, lambda{true}, "Fizz"}.should_not raise_error ArgumentError
  end

  it "has a number" do
    @noizer = Noizer.new 10,lambda{true}, "Fizz"
    @noizer.number.should == 10
  end

  it "has a rule" do
    rule = lambda{true}
    @noizer = Noizer.new 10,rule, "Fizz"
    @noizer.rule.should == rule
  end

  it "has a display message" do
    @noizer = Noizer.new 10, lambda{true}, "Fizz"
    @noizer.message.should == "Fizz"
  end
end
