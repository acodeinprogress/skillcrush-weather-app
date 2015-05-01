require 'yahoo-weather'

puts "What is your zipcode? "
zip_code = gets.chomp

@client = YahooWeather::Client.new
response = @client.lookup_location(zip_code)

current_temp = response.condition.temp
current_conditions = response.condition.text

puts "The current temperature is #{current_temp} and it is #{current_conditions}."

(0..4).each do |n|
    forecast_day = response.forecasts[n].day
    forecast_condition = response.forecasts[n].text
    forecast_hi = response.forecasts[n].high
    forecast_low = response.forecasts[n].low
    if n == 0
        puts "Today's forecast is #{forecast_condition} with a high of #{forecast_hi} and a low of #{forecast_low}."
    elsif n == 1
        puts "Tomorrow's forecast is #{forecast_condition} with a high of #{forecast_hi}and a low of #{forecast_low}."
    else
        puts "#{forecast_day}'s forecast is #{forecast_condition} with a high of #{forecast_hi} and a low of #{forecast_low}"
    end
end
