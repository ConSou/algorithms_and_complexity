require_relative 'distance'

class SalesMan
  attr_accessor :visited_cities, :name

  def initialize(name)
    @name = name
    @visited_cities = []
  end

  def traveling_sales_plan(current_city)

    until visited_cities.length == City.count
      @visited_cities.push(current_city.name)
      current_city.visited = true

      traveling_sales_plan(find_closest(current_city))
    end
    @visited_cities
  end

  def find_closest(current_city)
    closest_city_dist = nil
    closest_city = nil

    City.all_cities.reject{|u| u == current_city || u.visited == true}.each do |city|
      new_dist = distance(current_city.coords, city.coords)
      if closest_city_dist == nil || new_dist < closest_city_dist
         closest_city_dist = new_dist
         closest_city = city
      end
    end
    closest_city
  end
end
