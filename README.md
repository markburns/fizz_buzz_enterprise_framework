FizzBuzz Enterprise Framework
=============================

A common problem that programmers often need to face within their career
is the FizzBuzz problem.

Simply stated it is this:

  Display a list of integers, if the number can be divided by 5 print out
  "Fizz". If it can be divided by 3 print out "Buzz". If it can be divided
  by both then print out "FizzBuzz"

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

The solution is very closely coupled to the problem, and doesn't allow for
a Business Manager or Client Liason team to amend the parameters of the
problem and solution.

The aim of the FizzBuzz Enterprise Framework is to allow this solution to
expand with the scope of the problem.

Wouldn't it be nice if we could just write the following instead:

```ruby
require 'fizz_buzz'

FizzBuzz.run! 100
```

Or connect to

http://fizzbuzz.example.com/fizz/5.xml
to get back

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<IsFizz>true</IsFizz>
<Message>Fizz</message>
```

TODO:
____
* Split logic into MVC for proper separation of concerns and modularity

* Write a simple DSL to alter parameters of FizzBuzz algorithm

* Split Fizzer and Buzzer into separate RESTful services to build a scalable
Service Oriented Architecture application.

* Write a custom XML Parser

* Allow implementation of the algorithm to be configured using XML files or the
proprietery simple DSL

* Ammend view layer to support custom configuration of presentation using XML

* Admin interface for the presentation layer configuration data

* Admin interface to handle changes to the Admin interface

* Easy to use .Net, PHP and Java client libraries
