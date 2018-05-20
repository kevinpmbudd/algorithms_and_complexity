require_relative 'data'
require './graph'

def nearest_neighbor(graph, current_city)
  while graph.cities.length > 1
    graph.path << current_city.name
    graph.cities.delete_if { |k,v| k == current_city.name}
    neighbors = []
    graph.cities.each do |k,v|
      neighbors << [k, v.neighbors[current_city.name]]
    end
    next_city = neighbors.min { |a,b| a[1] <=> b[1] }
    current_city = graph.cities[next_city[0]]
  end
  graph.path << current_city.name << graph.path.first
end

graph = Graph.new(CITIES)
hamiltonian_cycle = nearest_neighbor(graph, @chicago)
puts hamiltonian_cycle
