require 'benchmark'

def quick_sort(collection, first=0, last=collection.length - 1)
  return [] if collection.empty?

  if first < last
    pivot = partition(collection, first, last)
    quick_sort(collection, first, pivot - 1)
    quick_sort(collection, pivot + 1, last)
  end
  return collection
end

def swap(collection, index_one, index_two)
  temp = collection[index_one]
  collection[index_one] = collection[index_two]
  collection[index_two] = temp
end

def partition(collection, first, last)
  pivot = collection[last]
  p_index = first
  i = first

  while i < last do
    if collection[i] <= pivot
      swap(collection, i, p_index)
      p_index += 1
    end
    i += 1
  end
  swap(collection, p_index, last)
  return p_index
end


unsorted = (1..50).to_a.shuffle

puts Benchmark.measure{
  quick_sort(unsorted)
}

unsorted
