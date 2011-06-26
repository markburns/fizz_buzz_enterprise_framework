require './lib/fizz_buzz/fizzer'
describe FizzBuzz::Fizzer do
  it "doesn't require arguments" do
    lambda{FizzBuzz::Fizzer.new}.should_not raise_error ArgumentError
  end
end
