require 'active_support/all'

module TimeHelpers
	refine Integer do
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
end

puts 2.hours
puts 3.days.class
puts 2.hours.ago

class Person
  using TimeHelpers
	def reminder
		2.hours
	end
end

reminder = Person.new.reminder
p reminder
p reminder.class
