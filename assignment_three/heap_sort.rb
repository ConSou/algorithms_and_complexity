require 'benchmark'

def heap_sort(collection)
  build_max_heap(collection)

  last_item = collection.length - 1

  while last_item > 0
    swap(collection, 0, last_item)
    heapify(collection, 0, last_item)

    last_item -= 1
  end
  return collection
end

def build_max_heap(collection)
  i = (collection.length / 2.to_f).ceil - 1

  while i >= 0 do
    heapify(collection, i, collection.length)
    i -= 1
  end
  p collection
end

def heapify(collection, i, max)
  while i < max do
    index = i
    left_child = 2 * i + 1
    right_child = left_child + 1

    if left_child < max && collection[left_child] > collection[index]
      index = left_child
    end

    if right_child < max && collection[right_child] > collection[index]
      index = right_child
    end

    if index == i
      return
    end

    swap(collection, i, index)

    i = index
  end

end

def swap(collection, index_one, index_two)
  temp = collection[index_one]
  collection[index_one] = collection[index_two]
  collection[index_two] = temp
end

unsorted = (1..50).to_a.shuffle

puts Benchmark.measure{
  heap_sort(unsorted)
}

unsorted
