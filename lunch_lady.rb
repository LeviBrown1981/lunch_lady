require "pry"
require "colorize"
# Classes
# LunchLady
# User
# MainDish
# SideDish
class LunchLady
  attr_accessor
  def initialize
    @main_dish = []
    @side_dish = []
    @cart = []
    @wallet = {}
    @checkout = []
    @pricecart = [] 
    puts "-- Welcome to Ruby Cafe --"
    puts "What is your name?"
    name = gets.strip
    puts "How much money do you have?"
    @wallet = gets.to_i
    puts "What main dish would you like?"
    list_of_main
    puts "What side dish would you like?"
    list_of_sides
    puts "Ready to checkout? (y/n)"
    cart = gets.to_i
  end
end


class Main_dish
  attr_accessor :item, :price
  def initialize(item, price)
    @item = item
    @price = price
    puts "#{@item} #{@price}".colorize"cyan"
  end
end

def list_of_main
  arr_of_mains = [
    pizza = Main_dish.new("Pizza", 5),
    tika_masala = Main_dish.new("tika masala", 7.99),
    italian_sub = Main_dish.new("Italian sub", 4.25),
    smothered_burrito = Main_dish.new("Smothered burrito", 9.99)]
    main_dish = gets.to_i
    @cart << arr_of_mains[main_dish -1].item
    @checkout << arr_of_mains[main_dish -1].price
    @pricecart.inject(0) {|sum, x| sum + x}
end

class Side_dish
  attr_accessor :item, :price
  def initialize(item, price)
    @item = item
    @price = price
    puts "#{@item} #{@price}"
  end
end

def list_of_sides
  arr_of_sides = [
    mac_and_cheese = Side_dish.new("Mac & cheese", 4.75),
    garlic_fries = Side_dish.new("Garlic fries", 5.50),
    coconut_rice = Side_dish.new("Coconut rice", 2.75),
    rice_and_beans = Side_dish.new("Rice and beans", 3.33)]
    side_dish = gets.to_i
    @cart << arr_of_sides[side_dish -1].item
    @checkout << arr_of_sides[side_dish -1].price
    @pricecart.inject(0) {|sum, x| sum + x}
end

LunchLady.new

  
  
  

  
  
  
  
  