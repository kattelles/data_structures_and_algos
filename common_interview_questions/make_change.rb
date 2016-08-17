# Make Change: write a function that takes in an amount and a set of coins.  Return the minimum number of coins
# needed to make change for the given amount.  You may assume you have an unlimited supply of each type of coin.
# If it's not possible to make change for a given amount, return nil.  You may assume that the coin array is sorted
# and in ascending order.

def make_change_two(amt, coins, coin_cache = {0 => 0})
  return coin_cache[amt] if coin_cache[amt]
  return 0.0/0.0 if amt < coins[0]

  min_change = amt
  way_found = false
  idx = 0
  while idx < coins.length && coins[idx] <= amt
    num_change = 1 + make_change_two(amt - coins[idx], coins, coin_cache)
    if num_change.is_a?(Integer)
      way_found = true
      min_change = num_change if num_change < min_change
    end
    idx += 1
  end

  if way_found
    coin_cache[amt] = min_change
  else
    coin_cache[amt] = 0.0/0.0
  end
end


def make_change(target, coins = [25, 10, 5, 1])
  return [] if target == 0
  return nil if coins.none? { |coin| coin <= target }

  coins = coins.sort.reverse

  best_change = nil
  coins.each_with_index do |coin, index|
    next if coin > target
    remainder = target - coin
    best_remainder = make_change(remainder, coins.drop(index))
    next if best_remainder.nil?
    this_change = [coin] + best_remainder
    if (best_change.nil? || (this_change.count < best_change.count))
      best_change = this_change
    end
  end

  best_change
end
