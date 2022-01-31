class Person
	p self

	def self.speak
		p "class speak"
	end

	def speak
		p "instance speak"
	end
end

Person.speak
Person.new.speak

puts ["hello", 3, Person, Class, method(:puts)].map(&:class)
