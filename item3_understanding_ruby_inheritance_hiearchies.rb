class Parent
	def name 
	end 
end 

class Child < Parent
	def self.where_am_i?
	end
end

a = Child.new 
puts a.respond_to?(:name)
#true
#basic inheritance 

module Dog
	def dog_name
	end
end

class Animal 
	include(Dog)
end
b = Animal.new 
puts b.class.superclass 
#Object
puts b.respond_to?(:dog_name)
#true 
#modules are not included in the naming of the class hierarchies. They are treated as singleton classes with methods given to them. 

puts Child.singleton_class.instance_methods(false)
#where_am_i
puts Child.singleton_class.superclass
#Parent
puts Animal.singleton_class.superclass
#Object. NOT dog

