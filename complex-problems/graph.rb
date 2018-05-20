class Graph
  attr_accessor :cities, :path

  def initialize(cities={}, path=[])
    @cities = cities
    @path = path
  end
end 
