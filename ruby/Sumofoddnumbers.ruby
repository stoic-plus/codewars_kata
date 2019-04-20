#           1
#       3     5
#     7     9    11
#   13    15    17    19
# 21    23    25    27    29
# ...
# Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:
#
# row_sum_odd_numbers(1); # 1
# row_sum_odd_numbers(2); # 3 + 5 = 8

# iterative

def row_sum_odd_numbers(n)
  triangle = []
  current_sub = [1]
  limit = 1
  i = current_sub.last
  until triangle.length == n
    if current_sub.length >= limit
      triangle.push(current_sub)
      i = current_sub.last
      current_sub = []
      limit += 1
    else
      current_sub.push(i + 2)
      i = current_sub.last
    end
  end
  row_to_calc = triangle[n - 1]
  row_to_calc.reduce(:+)
end

# recursive

def row_sum_odd_numbers(n)
  def recursive_triangle(n, triangle=[], current_sub=[1], i=1)
    limit = triangle.length + 1
    i = current_sub.last unless !current_sub.last
    if (triangle.length == n)
      return triangle[n - 1].reduce(:+)
    else
      if current_sub.length >= limit
        triangle.push(current_sub)
        i = current_sub.last
        current_sub = []
      else
        current_sub.push(i + 2)
      end
    end
    recursive_triangle(n, triangle, current_sub, i)
  end
  recursive_triangle(n)
end


# row_sum_odd_numbers(1) # 1)
# row_sum_odd_numbers(2)# 8)
# row_sum_odd_numbers(13)#  2197)
# row_sum_odd_numbers(19)#  6859)
# row_sum_odd_numbers(41)#  68921)
