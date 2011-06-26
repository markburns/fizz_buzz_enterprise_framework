require './lib/fizzer'
describe Fizzer do
  it "doesn't require arguments" do
    lambda{Fizzer.new}.should_not raise_error ArgumentError
  end

  it "shows a message for any number" do
    @fizzer = Fizzer.new

    @fizzer.message_for(5).should == "Fizz"
    @fizzer.message_for(3).should == ""
  end
end
