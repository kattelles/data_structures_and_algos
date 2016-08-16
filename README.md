# Data Structures

## Static Array

Very basic implementation of a static array.

| API           | BigO
| ------------- |------------- |
| [](idx)       | O(1)         |
| []=(idx, val) | O(1)         |


## Dynamic Array

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

## Ring Buffer

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

## Linked-List

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

## Hash Map

## LRU Cache

## Binary Search Tree

A binary tree is a data structure composed of nodes. Each node can have 0-2
children.

A BST is a type of binary tree where the following rule applies: the left node
is always less that it's parent and the right node is always greater than it's
parent.

## Heap (Heap Sort)

A heap is a tree that is either a min heap or a max heap down. In a max heap,
the parent nodes are always larger than those of the the children and vice
versa for min heap.

*heap property*  If A is a parent node of B then the value of node A
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

## Graph (Dijkstra's Algorithm)

# Sorts and Searches

## Quick Sort

In the best case, quicksort always chooses a pivot that evenly divides the array. At each level, quicksort goes through the entire array to partition the array, which takes O(n) time. So the best case, like mergesort, is O(nlogn).

However, there is the possibility that quicksort will choose a poor pivot; the worst case is if every element is larger (or smaller) than the pivot. Then one side has n-1 elements and the other has zero. This degenerates to an O(n**2) time complexity.

QS can be done either in place or not which will change space complexity.

## Merge Sort

Because merge sort breaks the array in half each time, it can only have a recursion depth of at most log_2(n) calls. At each recursion depth level, n elements are merged. Therefore, the time complexity is nlog(n).

This time complexity is both the best and worst case; no matter the starting order of the array, log_2(n) recursions are needed, and all the elements need to be merged at each level.

## Bubble Sort

The best case for bubble sort is a sorted array (time O(n)). The worst case is a reversed array (O(n**2)).

Bubble sort is an in-place sort: it doesn't need to make copies of the array. It takes O(1) memory; it only needs to store the sorted and i variables.

## Selection Sort

Selection sort is a comparison sort that works as follows:

1. find the minimum value in the list
2. swap it with the value in the first position
3. sort the remainder of the list (excluding the first value)

Selection sort is very slow on large lists. O(n**2)

## Insertion Sort

Insertion sort is also O(n**2) but it works in a slightly different way. It always maintains a sorted sublist in the lower positions of the list. Each new item is then “inserted” back into the previous sublist such that the sorted sublist is one item larger.


## Topological Search

## Depth First Search

## Breadth First Search

## Binary Search

# Common Interview Questions

## Make Change
