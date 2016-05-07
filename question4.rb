#---------------------------------------------------------
# 
# Script Name: Q1_P1_greeting.rb
# Author: Suraj Babu Tiwari
# 
# Description: This will greet a person with his name 
#---------------------------------------------------------

	
	
cityInfo={}

while (true) do	

	print "Please provide name of the city: "
	cityName = gets.chomp

	print "Please provide areacode: "
	areaCode = gets.chomp

	cityInfo[cityName.to_sym] = areaCode.to_i

	print "Would you like to add more info in dictionary? (y/n)\n: "
  	answer = STDIN.gets
  	answer.chop!
  	
  	if answer == "n"
  		break;
  	end

end

keys = cityInfo.keys
puts "City names in dictionary:\n #{keys}"

while (true) do
	print "Please select the city name? (y/n)\n: "
	city = gets.chomp
	value = cityInfo[city.to_sym]
	puts "Areacode is: #{value}"
	
	print "Would you like to query more cities? (y/n)\n: "
  	answer = STDIN.gets
  	answer.chop!
  	
  	if answer == "n"
  		break;
  	end
end

print "Please select the area code to display city name? (y/n)\n: "
areacode = gets.chomp
value = cityInfo.key(areacode.to_i)
puts "City names is: #{value}"
