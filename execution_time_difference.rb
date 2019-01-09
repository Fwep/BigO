# list = [0, 3, 5, 4, -5, 10, 1, 90]
# my_min(list) # => -5
def my_min_O_n2(list)
  # O(n^2)
  start = Time.now

  min = nil
  list.each_with_index do |el, idx|
    min = el if ((list[0...idx] + list[(idx + 1)..-1]).all? {|num| num > el })
  end
  min
  
  Time.now - start
end

def my_min_O_n(list)
  # O(n)
  start = Time.now
  
  min = nil
  list.each do |el|
    min = el if !min || el < min
  end
  min

  Time.now - start
end