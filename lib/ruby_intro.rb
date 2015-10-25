# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  summtotal = 0
  if arr.count == 0 then
    return 0
  else
    arr.each {|x| summtotal+=x}
    return summtotal
  end
end

def max_2_sum arr
  if arr.count == 0 then
    return 0
  elsif arr.count == 1 then
    arr_temp = arr.sort
    arr_temp.reverse!
    return arr_temp[0]
  else
    arr_temp = arr.sort
    arr_temp.reverse!
    return arr_temp[0]+arr_temp[1]    
  end
end

def sum_to_n? arr, n
  if arr.count == 0 then
    return false
  elsif arr.count == 1 then
    return false
  else
    for i in 0..(arr.count-1)
      for j in (i+1)..(arr.count-1)
        if (arr[i]+arr[j] == n) then return true end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s == '' then return false end
  return (s =~ /^[^AEIOU\W](.*)+/i)
end

def binary_multiple_of_4? s
  if !(s =~ /^(0|1)+\z/) then return false end
  num = s.to_i(2)
  return (num % 4 == 0)
end

# Part 3

class BookInStock

  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn , price)
    if (isbn == "" || price<=0) then raise ArgumentError end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$" + ('%.2f' % price)
  end
end
