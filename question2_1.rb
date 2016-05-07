#---------------------------------------------------------
# 
# Script Name: Q1_P1_greeting.rb
# Author: Suraj Babu Tiwari
# 
# Description: This will greet a person with his name 
#---------------------------------------------------------
class VendorFood
	attr_accessor :name, :cost, :venNo, :count 
	## Initilize variables
	
	$firstSale = 0
	$secondSale = 0
	$thirdSale = 0
	$totalSale = 0
	def initialize(name, cost, venNo)
    	@name = name
    	@cost=cost
    	@venNo=venNo
    	@count=0
  	end	
  	
  	def stock(article,num_items)
    	article.stock(article,num_items)
  	end
  	
  	def vend(article)
    	article.vend(article)
    	article.selling(article)
  	end

	def cumulativeSale(stuff1,stuff2,stuff3)
    	$firstSale = (stuff1.selling(stuff1) ).to_i
    	$secondSale = (stuff2.selling(stuff2)).to_i
    	$thirdSale = (stuff3.selling(stuff3)).to_i
    	$totalSale = $firstSale + $secondSale + $thirdSale
    	puts "Total sale is #{$totalSale}"
  	end
 
  	def to_str()
    	puts "sign in"
  	end

end




class CandyBar < VendorFood
	@@supply=0
  	@sale = 0
  	@@vendedSupply = 0
  	
	def initialize(name, cost,venNo)
        super(name, cost,venNo)
    end
    
    
    def stock(stuff,num_items)
  		@@vendedSupply = @@vendedSupply + num_items
  		"Supply of candy bar are #{@@vendedSupply}"
  	end
  
  	 def vend(thing)
    	if @@supply > 0
		    @@supply = @@supply - 1
    		@@vendedSupply = @@vendedSupply + 1
    		puts "One candybar vended successfully"
    	else
      		puts "No item to vend"
    	end
  	end
  
  	def selling(thing)
    	@selling = @selling.to_i + (@price.to_i * @@vendedSupply.to_i)
    	puts "selling of bars are #{@selling}"
    	return @selling
  	end
  
  
    def to_str()
    	print ("Candy bar ")
    	super()
  	end
end



class Chips < VendorFood
	@@supply=0
  	@sale = 0
  	@@vendedSupply = 0
  	
	def initialize(name, cost,venNo)
        super(name, cost,venNo)
    end
    
    
    def stock(stuff,num_items)
  		@@vendedSupply = @@vendedSupply + num_items
  		"Supply of chips are #{@@vendedSupply}"
  	end
  
  	 def vend(thing)
    	if @@supply > 0
		    @@supply = @@supply - 1
    		@@vendedSupply = @@vendedSupply + 1
    		puts "One chip vended successfully"
    	else
      		puts "No item to vend"
    	end
  	end
  
  	def selling(thing)
    	@selling = @selling.to_i + (@price.to_i * @@vendedSupply.to_i)
    	puts "selling of chips are #{@selling}"
    	return @selling
  	end
  
  
    def to_str()
    	print ("Chips ")
    	super()
  	end
end



class Crackers < VendorFood
	@@supply=0
  	@sale = 0
  	@@vendedSupply = 0
  	
	def initialize(name, cost,venNo)
        super(name, cost,venNo)
    end
    
    
    def stock(stuff,num_items)
  		@@vendedSupply = @@vendedSupply + num_items
  		"Supply of crackers are #{@@vendedSupply}"
  	end
  
  	 def vend(thing)
    	if @@supply > 0
		    @@supply = @@supply - 1
    		@@vendedSupply = @@vendedSupply + 1
    		puts "One crackers vended successfully"
    	else
      		puts "No item to vend"
    	end
  	end
  
  	def selling(thing)
    	@selling = @selling.to_i + (@price.to_i * @@vendedSupply.to_i)
    	puts "selling of crackers are #{@selling}"
    	return @selling
  	end
  
  
    def to_str()
    	print ("crackers ")
    	super()
  	end
end





sellObject1 = VendorFood.new('ads',4,1)
sellObject3 = CandyBar.new("candy bar", 20, 2)
puts sellObject1.stock(sellObject3,3)
puts sellObject1.vend(sellObject3)
sellObject2 = Chips.new("chips", 10, 1)
sellObject5 = Chips.new("chips", 10, 1)
puts sellObject1.stock(sellObject2,10)
puts sellObject1.vend(sellObject2)

sellObject3 = CandyBar.new("candy bar", 10, 1)
puts sellObject1.stock(sellObject3,10)
puts sellObject1.vend(sellObject3)

sellObject4 = Crackers.new("crackers", 10, 1)
puts sellObject1.stock(sellObject4,10)
puts sellObject1.vend(sellObject4)

puts sellObject1.cumulativeSale(sellObject2,sellObject3,sellObject4)
puts sellObject2.to_str()
puts sellObject3.to_str()
puts sellObject4.to_str()
