class Heap
  def initialize(values)
    @store = []
    values.each {|val| insert(val)}
  end

  def insert(val)
    @store << val
    heapify_up!
    self
  end

  def pop_min
    return nil if length == 0

    val = min
    swap! (0, length - 1)
    @store.pop
    heapify_down!
    val
  end

  def min
    @store.first
  end

  private

  def heapify_up!
    i = length - 1

    while i > 0
      current = @store[i]
      parent = @store[parent_idx(i)]
      if current < parent
        swap! (i, parent_idx(i))
        i = parent_idx(i)
      else
        break
      end
    end
  end

  def heapify_down!
    i = 0
    while i <= parent_idx(@store.length - 1)
      smallest_child = children_idx(i).min_by { |idx| @store[idx] }
      if @store[i] > @store[smallest_child]
        swap!(i, smallest_child)
        i = smallest_child
      else
        break
      end
    end
  end

  def parent_idx(i)
    i == 0 ? 0 : (i - 1) / 2
  end

  def children_idx(i)
    [(2 * i) + 1, (2 * i) + 2].select { |idx| idx < @store.length }
  end

  def swap!(idx1, idx2)
    @store[idx1] = @store[idx2]
    @store[idx2] = @store[idx1]
  end

  def length
    @store.length
  end

  # HEAP SORT

  def heap_sort
    heapify!
    unheapify!
    reverse!
  end

  def heapify!
    heap_len = 1
    while heap_len < length
      current = heap_len
      parent = parent_idx(current)
      while self[current] < self[parent]
        swap!(current, parent)
        current = parent
        parent = parent_idx(current)
      end
      heap_len += 1
    end
  end

  def unheapify!
    heap_len = length
    while heap_len > 0
      swap!(0, heap_len - 1)
      heap_len -= 1
      i = 0
      while need_to_heapify_down?(i, heap_len)
        smallest_child = children_idx(i, heap_len).min_by { |idx| self[idx] }
        swap!(i, smallest_child)
        i = smallest_child
      end
    end
  end

  def need_to_heapify_down?(i, heap_len)
    children_idx(i, heap_len).any? { |child_idx| self[child_idx] < self[i] }
  end
end
