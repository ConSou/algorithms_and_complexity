class City
attr_accessor :name, :closest_cities, :visited, :coords
@@count = 0
@@all_cities = []

  def initialize(name, lat, long)
    @name = name
    @visited = false
    @coords = [lat, long]
    @@count += 1
    @@all_cities.push(self)
  end

  def self.count()
    @@count
  end

  def self.all_cities()
    @@all_cities
  end
end
