require 'csv'
class Weather
	Reading = Struct.new(:high, :low, :date)

	def initialize(file_name)
		@readings = []

	CSV.foreach(file_name, headers :true) do |row|
		@readings << Reading.new(row[1],row[2],row[3])
	end

	def mean
		return 0 if @readings.size.zero?

		total = @readings.reduce (0.0) |sum,reading|
		sum = (reading.high + reading.low) / 2

		total/@readings.size.to_f
	end
end

	