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

      next_visit = current_city.closest_cities[0]
      if next_visit.visited == false
        traveling_sales_plan(next_visit)
      else
        i = 1
        while i < current_city.closest_cities.length
          if current_city.closest_cities[i].visited == false
            traveling_sales_plan(current_city.closest_cities[i])
            break
          else
            i += 1
          end
        end
      end

    end
  end
end
