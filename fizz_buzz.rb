#Every 5th number say Fizz. Every 3rd say Buzz. Both say FizzBuzz
usage = <<EOF
  Usage:

  ruby fizz_buzz.rb <value>

  <value> is the number to rub Fizz Buzz up to
EOF

max_value = ARGV[0].to_i
puts usage unless max_value > 0

(1..max_value).each do |i|
  fizz = i % 5 == 0
  buzz = i % 3 == 0

  puts("#{i}: ".tap do |m|
    m << "Fizz" if fizz
    m << "Buzz" if buzz
  end)
end
