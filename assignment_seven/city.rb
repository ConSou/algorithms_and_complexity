class City
attr_accessor :name, :closest_cities, :visited
@@count = 0

  def initialize(name)
    @name = name
    @visited = false
    @closest_cities = nil

    @@count += 1
  end

  def self.count()
    @@count
  end

  def add_closest_cities(array)
    @closest_cities = array
  end
end
