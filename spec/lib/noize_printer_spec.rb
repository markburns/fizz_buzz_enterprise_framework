require './lib/noize_printer'
describe NoizePrinter do
  it "accepts a maximum value" do
    lambda{NoizePrinter.new 10}.should_not raise_error ArgumentError
    lambda{NoizePrinter.new }.should raise_error ArgumentError
  end
end
