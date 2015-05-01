require 'yahoo-weather'

puts "What is your zipcode? "
zip_code = gets.chomp

@client = YahooWeather::Client.new
response = @client.lookup_location(zip_code)

current_temp = response.condition.temp
current_conditions = response.condition.text

puts "The current temperature is #{current_temp} and it is #{current_conditions}."
