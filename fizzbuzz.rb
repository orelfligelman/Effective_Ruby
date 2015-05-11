class Number_Games
	def fizzbuzz(counter,limit)
		until counter == limit do 
			case 
				when counter % 3 == 0 && counter % 5 != 0 
				puts "fizz"
				when counter % 5 == 0 && counter % 3 != 0 
				puts "buzz"
				when counter % 3 && counter % 5 == 0
				puts "fizzbuzz"
				when counter % 3 != 0 || counter % 5 != 0 
				puts counter  
			end
		counter += 1
		end
	end
end
a = Number_Games.new
puts a.fizzbuzz(1,100)

