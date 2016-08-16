## Static Array

Very basic implementation of a static array.

| API           | BigO
| --------------|--------------|
| [](idx)       | O(1)         |
| []=(idx, val) | O(1)         |


## Dynamic Array

Built upon a static array, a Dynamic Array will resize! when necessary.

| API           | BigO
| --------------|--------------|
| [](idx)       | O(1)         |
| []=(idx, val) | O(1)         |
| pop           | O(1)         |
| push(val)     | O(n)         |
| shift         | O(n)         |
| unshift(val)  | O(n)         |
| resize!       | O(n)         |

## Ring Buffer

The Ring Buffer is an optimization of the Dynamic Array. By keeping track of a start_idx
an using modulus to find the index, the RB allows for shifting and unshifting in constant time.

| API           | BigO
| --------------|--------------|
| [](idx)       | O(1)         |
| []=(idx, val) | O(1)         |
| pop           | O(1)         |
| push(val)     | O(1)         |
| shift         | O(1)         |
| unshift(val)  | O(1)         |
| resize!       | O(n)         |

## Linked-List

A linked list is a data structure that consists of a series of links. Each link holds a value and a pointer to the next link (or nil). Given a pointer to the first (or head) link, you can access any arbitrary link by traversing the links in order.

| API             | BigO
| ----------------|--------------|
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

## Heap (Heap Sort)

## Graphs

## Dijkstra

## Binary Tree

## Quick Sort

## Merge Sort

## Bubble Sort

## Selection Sort

## Insertion Sort

## Topological Search

## Depth First Search

## Breadth First Search

## Binary Search
