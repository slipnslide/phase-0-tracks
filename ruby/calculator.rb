
#def calculator method
#lookup how to add operation

#lookup how to pass operation to string
#".send"
#Invokes the method identified by symbol, passing it any arguments specified.
#You can use __send__ if the name send clashes with an existing method in obj. 
#when the method is identified by a string, the string is converted to a symbol.
def calculate(x, operation, y)
	x.send(operation, y)
end
#p calculate(4, "+", 5)
#p calculate(3, "*", 2)
#p calculate(12, "/", 3)
#p calculate(3, "-", 2)


#USER INPUT
puts "What calculation would you like to preform?? ex: 4+5"
str = gets.chomp.split("")
p str
first = str[0].to_i
second = str[2].to_i
symbol = str[1].to_sym

calculate(first, symbol, second)



