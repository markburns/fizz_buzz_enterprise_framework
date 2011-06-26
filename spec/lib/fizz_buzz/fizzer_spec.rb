require './lib/fizz_buzz/fizzer'
describe FizzBuzz::Fizzer do
  it "doesn't require arguments" do
    lambda{FizzBuzz::Fizzer.new}.should_not raise_error ArgumentError
  end

  it "shows a message for any number" do
    @fizzer = FizzBuzz::Fizzer.new

    @fizzer.message_for(5).should == "Fizz"
    @fizzer.message_for(3).should == ""
  end
end
