#---------------------------------------------------------
# 
# Script Name: Q1_P1_greeting.rb
# Author: Suraj Babu Tiwari
# 
# Description: This will greet a person with his name 
#---------------------------------------------------------

## Define global person
$myName="Suraj"
arg=ARGV[0]

def printGreeting(name)
	print "Why hello there " + name + ", my name is #{$myName} \n\n"
end

printGreeting(arg)