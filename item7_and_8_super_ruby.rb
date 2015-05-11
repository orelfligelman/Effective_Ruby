module Best
	def a 
	puts "yes!"
	end
end

class Bestest 
	include(Best)
	def a 
	super	
	end
end
class MoreBestest
	include(Best)
	def a 
		super()
	end
end

b = Bestest.new
puts b.a
#yes
#invoking super without arguments means the method returns the same value the original method returns 

c = MoreBestest.new
puts c.a 
#yes
#invoking super with parentheses means it is invoked without arguments means the method returns the same value the

class SuperMath 
	def sum(x,y)
		return x + y  
	end
end

class AbstractMath < SuperMath
	def sum
		super()
	end
end

d = AbstractMath.new
puts d.sum


































































































module Bullocks 
	def bullet_operator
		puts "bullocks"
	end
end

class Balls  
	include Bullocks
	def bullet_operator
	super
	end
end

c = Balls.new
c.bullet_operator
#bullocks
puts c.inspect 


# class Ace 
# 	# attr_accessor(:base)
# 	def initialize
# 		@base = base
# 	end
# end

# class Face < Ace 
# 	# attr_accessor(:base,:space)
# 	# attr_reader :base, :space
# 	def initialize
# 		super(base)
# 		@space = space
# 	end
# end

# e = Ace.new
# e.inspect

# f = Face.new
# f.inspect



class Parent 
	def initialize
		@name = name
	end
end

class Child < Parent
	def initialize(name,grade)
		super(name)
		@grade = 8
	end
end

youngster = Child.new
puts youngster.grade