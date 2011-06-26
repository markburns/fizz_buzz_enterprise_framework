require './lib/fizz_buzz/main'
usage = <<EOF
  Usage:

  ruby fizz_buzz.rb <value>

  <value> is the number to run Fizz Buzz up to
EOF

max_value = ARGV[0].to_i
puts usage unless max_value > 0

Main.run! max_value
