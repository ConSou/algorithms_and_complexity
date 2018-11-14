require_relative 'salesman'
require_relative 'city'

# Creating Cities
bozeman = City.new("Bozeman", 45.676822, -111.046786)
belgrade = City.new("Belgrade", 45.775776, -111.175980)
butte = City.new("Butte", 46.002795, -112.529840)
helena = City.new("Helena", 46.589790, -112.043165)
big_sky = City.new("Big Sky", 45.262200, -111.308682)
billings = City.new("Billings", 45.782780, -108.501873)
white_fish = City.new("White Fish", 48.411272, -114.335421)

# Creating a Sales Person
salesman_tom = SalesMan.new("Tom")

p salesman_tom.traveling_sales_plan(bozeman)
