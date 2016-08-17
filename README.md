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

coming soon...

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

The binary search algorithm begins by comparing the target value to the value of the middle element of the sorted array. If the target value is equal to the middle element's value, then the position is returned and the search is finished. If the target value is less than the middle element's value, then the search continues on the lower half of the array; or if the target value is greater than the middle element's value, then the search continues on the upper half of the array. This process continues, eliminating half of the elements, and comparing the target value to the value of the middle element of the remaining elements - until the target value is either found (and its associated element position is returned), or until the entire array has been searched (and "not found" is returned).

Binary Search only works on sorted arrays.

# Common Interview Questions

## [Make Change (Dynamic Programming)](common_interview_questions/make_change.rb)

*Dynamic programming* is when you use past knowledge to make solving a future problem easier. A DP is an algorithmic technique which is usually based on a recurrent formula and one (or some) starting states. A sub-solution of the problem is constructed from previously found ones.

Make Change: write a function that takes in an amount and a set of coins.  Return the minimum number of coins needed to make change for the given amount.  You may assume you have an unlimited supply of each type of coin. If it's not possible to make change for a given amount, return nil.  You may assume that the coin array is sorted and in ascending order.

## [Stair Climb](common_interview_questions/stair_climb.rb)

Stair Climber: a frog climbs a set of stairs.  It can jump 1 step, 2 steps, or 3 steps at a time. Write a function that returns all the possible ways the frog can get from the bottom step to step n. For example, with 3 steps, your function should return [[1, 1, 1], [1, 2], [2, 1], [3]].

## [Knapsack Problem](common_interview_questions/knapsack_problem.rb)

Knapsack Problem: write a function that takes in an array of weights, an array of values, and a weight capacity and returns the maximum value possible given the weight constraint. For example: if weights = [1, 2, 3], values = [10, 4, 8], and capacity = 3, your function should return 10 + 4 = 14, as the best possible set of items to include are items 0 and 1, whose values are 10 and 4 respectively.  Duplicates are not allowed -- that is, you can only include a particular item once.
