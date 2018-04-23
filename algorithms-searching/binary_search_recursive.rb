def binary_search_recursive(collection, value)
  low = 0
  high = collection.length - 1
  mid = (low + high) / 2

  if collection.length == 1
    return collection[0]
  elsif collection[mid] == value
    return collection[mid]
  elsif collection[mid] > value
    binary_search_recursive(collection[low..mid-1], value)
  elsif collection[mid] < value
    binary_search_recursive(collection[mid+1..high], value)
  else
    return "#{value} not found"
  end
end

arr = (1..100).to_a
binary_search_recursive(arr, 36)
