require_relative 'salesman'
require_relative 'city'

# Creating Cities
bozeman = City.new("Bozeman")
belgrade = City.new("Belgrade")
butte = City.new("Butte")
helena = City.new("Helena")
big_sky = City.new("Big Sky")
billings = City.new("Billings")
white_fish = City.new("White Fish")


# Closeset List
# Bozeman [belgrade(16m), big_sky(56m), butte(1h 32m), helena(1h 41m), billings(2h 12m), white_fish(5h 17m)]
bozeman.add_closest_cities([belgrade, big_sky, butte, helena, billings, white_fish])

# Belgrade [bozeman(16m), big_sky(55m), butte(1h 13m), helena(1h 31m), billings(2h 17m), white_fish(5h 9m)]
belgrade.add_closest_cities([bozeman, big_sky, butte, helena, billings, white_fish])

# Butte [belgrade(1h 13m), helena(1h 13m), bozeman(1h 32m), big_sky(2h 1m), billings(3h 19m), white_fish(4h 2m) ]
butte.add_closest_cities([belgrade, helena, bozeman, big_sky, billings, white_fish])

# Helena [butte(1h 8m), belgrade(1h 32m), bozeman(1h 41m), big_sky(2h 21m), billings(3h 37m) white_fish(3h 42m)]
helena.add_closest_cities([butte, belgrade, bozeman, big_sky, billings, white_fish])

# Big Sky [bozeman(56m), belgrade(1h 4m), butte(2h 1m), helena(2h 22m), billings(3h 2m), white_fish(5h 59m)]
big_sky.add_closest_cities([bozeman, belgrade, butte, helena, billings, white_fish])

# Billings [bozeman(2h 12m), belgrade(2h 17m), big_sky(3h 6m), butte(3h 23m), helena(3h 42m), white_fish(7h 15m)]
billings.add_closest_cities([bozeman, belgrade, big_sky, butte, helena, white_fish])

# Whitefish [helena(3h 42m), butte(4h 2m), belgrade(5h 9m), bozeman(5h 17m), big_sky(5h 59m), billings(7h 15m)]
white_fish.add_closest_cities([helena, butte, belgrade, bozeman, big_sky, billings])


# Creating a Sales Person
salesman_tom = SalesMan.new("Tom")

salesman_tom.traveling_sales_plan(big_sky)
p salesman_tom.visited_cities
