def insertion_sort(collection)
   sorted_collection = [collection.delete_at(0)]

   for val in collection
     sorted_collection_index = 0
     while sorted_collection_index < sorted_collection.length
       if val <= sorted_collection[sorted_collection_index]
         sorted_collection.insert(sorted_collection_index, val)
         break
       elsif sorted_collection_index == sorted_collection.length - 1
         sorted_collection.insert(sorted_collection_index + 1, val)
         break
       end
       sorted_collection_index += 1
     end
   end
   sorted_collection
 end

def bucket_sort(array, bucket_size=5)
  min_value = array.min
  max_value = array.max
  number_of_buckets = ((max_value - min_value) / bucket_size).floor
  buckets = Array.new(number_of_buckets) { Array.new }

  array.each_with_index do |item, index|
    bucket_index = ((item - min_value) / bucket_size).floor
    buckets[bucket_index] << item
  end

  sorted_buckets = buckets.map { |bucket| insertion_sort(bucket) }
  sorted_buckets.flatten
end
