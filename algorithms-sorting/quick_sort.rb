def partition(array, lo, hi)
  pivot = array[hi]
  pivotLocation = lo

  index = lo
  while index < hi
    if array[index] <= pivot
      array[pivotLocation], array[index] =  array[index], array[pivotLocation]
      pivotLocation += 1
    end
    index += 1
  end
  array[pivotLocation], array[hi] =  array[hi], array[pivotLocation]
  pivotLocation
end

def quickSort(array, lo, hi)
  if lo < hi
    p = partition(array, lo, hi)
    quickSort(array, lo, p - 1)
    quickSort(array, p + 1, hi)
  end
  array
end

arr = ("A".."Z").to_a.shuffle

quickSort(arr, 0, arr.length - 1)
