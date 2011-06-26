#Every 5th number say Fizz. Every 3rd say Buzz. Both say FizzBuzz

(1..ARGV[0].to_i).each do |i|
  fizz = i % 5 == 0
  buzz = i % 3 == 0
  message = "#{i}: ".tap do |m|
    m << "Fizz" if fizz
    m << "Buzz" if buzz
  end
  puts message
end
