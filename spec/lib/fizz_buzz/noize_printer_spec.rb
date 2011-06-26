require './lib/fizz_buzz/noize_printer'

describe FizzBuzz::NoizePrinter do
  it "accepts a maximum value" do
    lambda{FizzBuzz::NoizePrinter.new 10}.should_not raise_error ArgumentError
    lambda{FizzBuzz::NoizePrinter.new   }.should     raise_error ArgumentError
  end

  it "prints out fizz buzz" do
    150.times do |i|

      fizz = (i+1) % 5 == 0 ? "Fizz" : ""
      buzz = (i+1) % 3 == 0 ? "Buzz" : ""
      Kernel.should_receive(:puts).with("#{i+1}: #{fizz}#{buzz}")

    end
    FizzBuzz::NoizePrinter.new 150
  end
end
