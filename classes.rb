# Monkey Patching

class Person
	def initialize()
	end
end

person = Person.new

# You can redefine a class multiple times

class Person
	def hello
		puts "hello"
  end
end

person.hello

class Integer
	def hours
		60 * minutes
	end

	def minutes
		60 * self
	end

	def days
		24 * hours
	end
end

puts 2.hours
puts 3.days
