#---------------------------------------------------------
# 
# Script Name: Q1_P1_greeting.rb
# Author: Suraj Babu Tiwari
# 
# Description: This will greet a person with his name 
#---------------------------------------------------------


class Evaluation
	def calc(*arg)
		operationRelational = ["\<", '\>', "\="]	## Operators that denote arithmetic
		arg.each do |arg_item|
			calculationType = ""
			outPut = ""
			if operationRelational.any? { |operationRelational| arg_item.include?(operationRelational) }
				calculationType = "Relational"
			else
				calculationType = "Arithmetic"
			end

			case calculationType
				when 'Relational'
					if arg_item.match(/\d\=\d/)
						puts "Replace  single = with double for evaluation"
						arg_item.gsub! /\=/, '=='
					end
        			outPut = eval(arg_item) ? 'TRUE' : 'FALSE'
      			when 'Arithmetic'
      				outPut=eval(arg_item)
        		end
        		puts "Argument is #{arg_item} and Output is #{outPut}"
		end
	end
end




## Define empty array to hold value 
expressionArray = []


while (true) do
	print "Please provide the mathcmatical expression to evaluate: "
	mathExp = STDIN.gets
	mathExp.chop!
	mathExp.gsub! /\s+/, ''			# Remove white spaces
	
	puts "Operator is --operator-- and mathExp is #{mathExp}"
	## Save input in array	
	expressionArray << mathExp
	
  	print "Would you like to evaluate more mathematical extression? (y/n)\n: "
  	answer = STDIN.gets
  	answer.chop!
  	
  	if answer == "n"
  		break;
  	end
end



## Calculate all expression
calculation = Evaluation.new
expressionArray.each do |i|
	calculation.calc(i)
end

