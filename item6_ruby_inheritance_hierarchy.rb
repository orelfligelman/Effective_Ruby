class Parent
attr_accessor :child
	def discipline(child)
		if child < 10 ? puts "grounded" : puts "too young"
	end
end

class Child < Parent 
attr_accessor :age
	def am_i_grounded?(age)
		if age < 10 ? puts "grounded" : puts "nope" 
 	end
end


a + Child.new 
a.singleton_class?
