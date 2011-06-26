require './lib/buzzer'
describe Buzzer do
  it "doesn't require arguments" do
    lambda{Buzzer.new}.should_not raise_error ArgumentError
  end

  it "shows a message for any number" do
    @buzzer = Buzzer.new

    @buzzer.message_for(3).should == "Buzz"
    @buzzer.message_for(5).should == ""
  end
end
