require './lib/fizz_buzz/noize_printer'
class Main
  def self.run! max
    FizzBuzz::NoizePrinter.new max
  end
end

