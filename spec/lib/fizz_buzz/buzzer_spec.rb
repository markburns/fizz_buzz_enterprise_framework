require './lib/fizz_buzz/buzzer'
describe FizzBuzz::Buzzer do
  it "doesn't require arguments" do
    lambda{FizzBuzz::Buzzer.new}.should_not raise_error ArgumentError
  end

end
