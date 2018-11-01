require 'benchmark'

# Insertion_sort from bloc curriculum to be used to sort buckets

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

 def bucket_sort(collection, bucket_size=5)
  return [] if collection.empty?

  min_val = collection.min
  max_val = collection.max

  bucket_count = ((max_val - min_val) / bucket_size) + 1
  bucket = Array.new(bucket_count)
  (0..bucket.length - 1).each do |i|
		bucket[i] = []
	end

  for val in collection
    bucket[(val - min_val) / bucket_size].push(val)
  end

  collection.clear
  bucket.each do |buck|
    insertion_sort(buck).each do |item|
      collection.push(item)
    end
  end
  collection
 end

 unsorted = (1..50).to_a.shuffle

 puts Benchmark.measure{
   bucket_sort(unsorted)
 }
 
 unsorted
