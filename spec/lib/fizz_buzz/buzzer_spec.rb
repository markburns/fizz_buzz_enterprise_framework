require './lib/fizz_buzz/buzzer'
describe FizzBuzz::Buzzer do
  it "doesn't require arguments" do
    lambda{FizzBuzz::Buzzer.new}.should_not raise_error ArgumentError
  end

  it "shows a message for any number" do
    @buzzer = FizzBuzz::Buzzer.new

    @buzzer.message_for(3).should == "Buzz"
    @buzzer.message_for(5).should == ""
  end
end
