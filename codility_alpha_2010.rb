# A is a zero-indexed array of N integers.
# Find the smallest integer P (first covering prefix) such that every value
# in array A is also in A[0..P].

# Constraints and assumptions:
# 0 ≤ P < N
# 1 ≤ N ≤ 1,000,000
# every element in array A is in the range [0,N-1]
# worst-case time and space complexity should be O(N)

def solution(a)
  hash = Hash.new
  a.each_with_index do |n, i|
    hash[n] ||= i
  end
  return hash.values.max
end