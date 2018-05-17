def improving_complexity_version_three(*arrays)
  array = arrays.flatten
  hash = {}
  array.each_with_index do |value,index|
    hash[index] = value
  end
  hash.values.sort
end
