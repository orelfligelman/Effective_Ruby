class Reduce 
	def sum(enum)
	enum.reduce(0) do |accumulator, element|
		accumulator + element
		end
	end

	def sum_two(enum)
		enum.reduce(0,&:+)
		return enum 
	end
end

a = Reduce.new
a.sum([1,4,6])
# puts a.last
a.inspect
b = Reduce.new
b.sum_two([6])
puts b.inspect
puts b.value 
#11




#pick users out of a hash that are over 21 and print their names 

# users.select{|u| u.age >= 21 }.map(&:name)


# #pick users out of a hash that are over 21 and print their names with reduce 

# users.reduce([]) do  |names, user|
# 	names << user.name if user.age >= 21 	
# end

# elements.reduce({}) do |accumulator, elemnt|
# 	 if element > 30 ? accumulator << element : element
# 	 end


