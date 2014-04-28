# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.Mikee Pourhadi
# 2.Natalie McCroy
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add an item to my grocery list.
# As a user, I want to delete an item on my grocery list.
# As a user, I want to view my current list.

 
# Pseudocode
# create a GroceryList class. 
# create an add item method for the GroceryList class that takes an argument.
# push the passed item into the grocery list.
# create a delete item method for the GroceryList class that takes an argument.
# delete item from the grocery list.
# create a view list method for the GroceryList class. 
# view list method should puts to screen the names of items, the prices of the items and the amounts of your current list.


#create a GroceryItem class.
# intialize class with name, price, and amount.

 
# Your fabulous code goes here....
class GroceryItem
  attr_reader :name, :price, :amount
  
  def initialize(name, price, amount)
    @name = name
    @price = price
    @amount = amount
  end
end

class GroceryList
 
  def initialize(*items)
    @list = *items
  end
  
  def add_item(item)
    @list << item
  end
  
  def delete_item(item)
    @list.delete(item)
  end
  
  def view_list
    @list.each do |item|
    puts "Item name: #{item.name}, Item price: #{item.price}, Item amount: #{item.amount}"
    end
  end

end


# DRIVER CODE GOES HERE. 
my_list = GroceryList.new

bread = GroceryItem.new('bread', 2.20, 3)
cheese = GroceryItem.new('feta', 5.50, 1)
hot_sauce = GroceryItem.new('sriracha', 4.00, 6)


my_list.add_item(bread)
my_list.add_item(cheese)
my_list.add_item(hot_sauce)

my_list.view_list

my_list.delete_item(cheese)

my_list.view_list

p GroceryList.is_a? Class 
p GroceryItem.is_a? Class
p my_list.is_a? GroceryList
p bread.is_a? GroceryItem

# REFLECTION
# This was a fairly easy and straightforward GPS. Natalie and I dealt with it slowly but surely and managed to complete it without a hitch. Pseudocoding and drivercoding helped us vastly, and we could just jump right in and create our code quickly. We had no particular issues here, as it was fairly similar to a challenge we had work on last week alone. Overall, we were fairly confident in this assignment.