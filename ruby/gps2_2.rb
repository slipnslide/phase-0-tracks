# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: create an empty array, split the items, 
  # def method, pass the items into an array (to iterate over later)
  # set default quantity, create a loop to set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] name_of_the_array
grocery_list = {}


def create_list(grocery_list, string)
  
  list = string.split(" ")
  
  list.each{ |item| grocery_list[item]= 1 }
  
  
  
end

our_list = create_list(grocery_list, "carrots apples cereal pizza")
my_list = create_list(grocery_list, "poptarts oj")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: take a string, take an item from another input, [nil]
# output:list with new item added, and quantity

def add_item(grocery_list, item, quantity=1)
  grocery_list[item]= quantity
  
end

add_item(grocery_list, "pineapple", 3)

# Method to remove an item from the list
# input: list, string"key", quantity"value"
# steps: find key/value and delete it
# output: p the hash without the deleted key

def remove_item(grocery_list, item)
  grocery_list.delete(item) 
  
end



# Method to update the quantity of an item
# input: List and updating quantity"value" string"key" 
# steps: pass in grocery_list and change value of string
# output: p updated grocery_list

def update_quantity(grocery_list, item, quantity)
  add_item(grocery_list, item, quantity)
  
end
update_quantity(grocery_list, "pineapple", 40)


# Method to print a list and make it look pretty
# input: take grocery_list
# steps: loop list, add title
# output: pretty list

def pretty_list(grocery_list)
  puts "Your Grocery List for next week!"
  grocery_list.each do |item, num|
    puts "#{item} qty #{num}"
  end
  
end
pretty_list(grocery_list)

#I learned that taking the time to pseudocode really saves you time in the long run when coding
#Hash just worked out better for this challenged considering we had an item and a quantity for that item
#The method will return whatever you pass into the method + whatever changes you made within the method
#You can pass strings, integers, hashs
#You can use previous methods to pass information between methods you can also pass your hash that is updated from your previous method to your new method
#I think I understand everything we did pretty well was kinda tired when we started so not really thinking 100% clearly.