#Every 5th number say Fizz. Every 3rd say Buzz. Both say FizzBuzz

(1..100.to_i).each do |i|
  fizz = i % 5 == 0
  buzz = i % 3 == 0
  message = "#{i}: "
  message << "Fizz" if fizz
  message << "Buzz" if buzz
  puts message
end
