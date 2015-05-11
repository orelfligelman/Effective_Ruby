class TemperatureConverter
	attr_accessor :celcius, :farenheit
	def initiaize (celcius,farnehiet)
		@celcius, @farenheit = celcius,farenheit
	end
	def f_to_c(celcius)
		puts  (celcius.to_f - 32) * 5/9 
		# return (celcius.to_f - 32) * 5/9
		# @farenheit = (celcius.to_f - 32) * 5/9
	end
	def c_to_f(farenheit)
		puts (farenheit.to_f * 9/5) + 32
		return  (farenheit.to_f * 9/5) + 32
		# @celcius = (farenheit.to_f * 9/5) + 32
	end
	def temp_range_f_to_c(first,last)
		 # @farenheit = first.to_f
		 # @celcius = last.to_f
		i = first
		until i >= last do 
			puts f_to_c(i)
			i += 1 
		end
	end	
	def temp_range_c_to_f(first,last)
		 # @farenheit = first.to_f
		 # @celcius = last.to_f
		i = first
		until i >= last do 
			puts c_to_f(i)	
			i += 1 
		end
	end	
end

a = TemperatureConverter.new
puts a.inspect
puts a.celcius

puts a.c_to_f(0)
puts a.f_to_c(100)
a.temp_range_f_to_c(-40,100)
a.temp_range_f_to_c_range_c_to_f(-40,100)