def sift(array, start, count)
  root = start

  while (root * 2 + 1) < count
    child = root * 2 + 1
    if (child < count - 1) && (array[child] < array[child + 1])
      child += 1
    end
    if array[root] < array[child]
      array[root], array[child] = array[child], array[root]
      root = child
    else
      break
    end
  end
end

def heap_sort(array, count)
  start = count / 2 - 1
  _end = count - 1

  while start >= 0
    sift(array, start, count)
    start -= 1
  end

  while _end > 0
    array[_end], array[0] = array[0], array[_end]
    sift(array, 0, _end)
    _end -= 1
  end
  array
end

arr = (1..100).to_a.shuffle
heap_sort(arr, arr.count)
