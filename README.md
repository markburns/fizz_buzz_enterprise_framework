FizzBuzz Enterprise Framework
=============================

A common problem that programmers often need to face within their career
is the FizzBuzz problem.

Simply stated it is this:

Display a list of integers, if the number can be divided by 5 print out
"Fizz". If it can be divided by 3 print out "Buzz"

A beginner programmer's naive solution to the problem might be something like
the following:

```ruby
(1..100.to_i).each do |i|
  fizz = i % 5 == 0
  buzz = i % 3 == 0
  message = "#{i}: "
  message << "Fizz" if fizz
  message << "Buzz" if buzz
  puts message
end
```

This solution may look clean and readable, but given changing requirements
it can quickly become unreadable, unmaintainable and a spaghetti
nightmare.

The aim of the FizzBuzz Enterprise Framework is to allow this solution to
expand with the scope of the problem.

TODO: Split Fizzer and Buzzer into separate RESTful services to build a scalable

