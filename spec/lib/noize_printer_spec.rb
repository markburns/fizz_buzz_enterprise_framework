require './lib/noize_printer'

describe NoizePrinter do
  it "accepts a maximum value" do
    lambda{NoizePrinter.new 10}.should_not raise_error ArgumentError
    lambda{NoizePrinter.new   }.should     raise_error ArgumentError
  end

  it "prints out fizz buzz" do
    150.times do |i|

      fizz = (i+1) % 5 == 0 ? "Fizz" : ""
      buzz = (i+1) % 3 == 0 ? "Buzz" : ""
      Kernel.should_receive(:puts).with("#{i+1}: #{fizz}#{buzz}")

    end
    NoizePrinter.new 15
  end
end
