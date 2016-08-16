# Data Structures

## [Static Array](data_structures/static_array.rb)

Very basic implementation of a static array.

| API           | BigO
| ------------- |------------- |
| [](idx)       | O(1)         |
| []=(idx, val) | O(1)         |


## [Dynamic Array](data_structures/dynamic_array.rb)

Built upon a static array, a Dynamic Array will resize! when necessary.

| API           | BigO
| ------------- |------------- |
| [](idx)       | O(1)         |
| []=(idx, val) | O(1)         |
| pop           | O(1)         |
| push(val)     | O(n)         |
| shift         | O(n)         |
| unshift(val)  | O(n)         |
| resize!       | O(n)         |

## [Ring Buffer](data_structures/ring_buffer.rb)

The Ring Buffer is an optimization of the Dynamic Array. By keeping track of a
start_idx and using modulus to find the index, the RB allows for shifting and
unshifting in constant time.

| API             | BigO
| --------------- |------------- |
| [](idx)         | O(1)         |
| []=(idx, val)   | O(1)         |
| pop             | O(1)         |
| push(val)       | O(1)         |
| shift           | O(1)         |
| unshift(val)    | O(1)         |
| resize!         | O(n)         |

## [Linked-List](data_structures/linked_list.rb)

A linked list is a data structure that consists of a series of links. Each link
holds a value and a pointer to the next link (or nil). Given a pointer to the
first (or head) link, you can access any arbitrary link by traversing the links
in order. Singly linked list = each link only holds a pointer for next. Doubly
linked list = each link holds a pointer to previous and next.

| API             | BigO
| --------------- |------------- |
| [](idx)         | O(n)         |
| first           | O(1)         |
| last            | O(1)         |
| empty?          | O(1)         |
| get (key)       | O(n)         |
| include?(key)   | O(n)         |
| insert(key, val)| O(1)         |
| remove(key)     | O(n)         |
| each            | O(n)         |

## [Hash Map](data_structures/hash_map.rb)

coming soon...

## [LRU Cache](data_structures/lru_cache.rb)

coming soon...

## [Binary Search Tree](data_structures/binary_search_tree.rb)

A binary tree is a data structure composed of nodes. Each node can have 0-2
children. A BST is a type of binary tree where the following rule applies: lesser or equal nodes to the left of their parents, larger nodes to the right.

| API             | BigO
| --------------- |------------- |
| insert(val)     | O(log n)     |
| include?        | O(log n)     |
| delete!         | O(log n)     |
| find!           | O(log n)     |

## [Heap (Heap Sort)](data_structures/heap.rb)

A heap is a tree that is either a min heap or a max heap down. In a max heap,
the parent nodes are always larger than those of the the children and vice
versa for min heap.

*heap property*  if A is a parent node of B then the value of node A
is ordered with respect to the value of node B and the same ordering applies
across the heap.

| API             | BigO
| --------------- |------------- |
| insert          | O(n)         |
| pop_min         | O(1)         |
| min             | O(1)         |
| heapify_up!     | O(1)         |
| heapify_down!   | O(1)         |

Heap sort takes an unordered array and turns it into a heap. It then pops off
the tree and returns the values to an array, this time in order.

## [Graph (Dijkstra's Algorithm)](data_structures/graph.rb)

# Sorts and Searches

## [Quick Sort](sorts_and_searches/quick_sort.rb)

In the best case, quicksort always chooses a pivot that evenly divides the array. At each level, quicksort goes through the entire array to partition the array, which takes O(n) time. So the best case, like mergesort, is O(nlogn).

However, there is the possibility that quicksort will choose a poor pivot; the worst case is if every element is larger (or smaller) than the pivot. Then one side has n-1 elements and the other has zero. This degenerates to an O(n**2) time complexity.

QS can be done either in place or not which will change space complexity.

## [Merge Sort](sorts_and_searches/merge_sort.rb)

Because merge sort breaks the array in half each time, it can only have a recursion depth of at most log_2(n) calls. At each recursion depth level, n elements are merged. Therefore, the time complexity is nlog(n).

This time complexity is both the best and worst case; no matter the starting order of the array, log_2(n) recursions are needed, and all the elements need to be merged at each level.

## [Bubble Sort](sorts_and_searches/bubble_sort.rb)

The best case for bubble sort is a sorted array (time O(n)). The worst case is a reversed array (O(n**2)).

Bubble sort is an in-place sort: it doesn't need to make copies of the array. It takes O(1) memory; it only needs to store the sorted and i variables.

## [Selection Sort](sorts_and_searches/selection_sort.rb)

Selection sort is a comparison sort that works as follows:

1. find the minimum value in the list
2. swap it with the value in the first position
3. sort the remainder of the list (excluding the first value)

Selection sort is very slow on large lists. O(n**2)

## [Insertion Sort](sorts_and_searches/insertion_sort.rb)

Insertion sort is also O(n**2) but it works in a slightly different way. It always maintains a sorted sublist in the lower positions of the list. Each new item is then “inserted” back into the previous sublist such that the sorted sublist is one item larger.

## [Topological Search](sorts_and_searches/topological_search.rb)

coming soon...

## [Depth First Search](sorts_and_searches/depth_first_search.rb)

coming soon...

## [Breadth First Search](sorts_and_searches/breadth_first_search.rb)

coming soon...

## [Binary Search](sorts_and_searches/binary_search.rb)

coming soon...

# Common Interview Questions

## [Make Change](common_interview_questions/make_change.rb)

coming soon...
