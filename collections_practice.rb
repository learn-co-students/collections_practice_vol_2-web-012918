def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end
def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end
def first_wa(array)
  array.find do |x|
    x[0..1] == "wa"
  end
end
def remove_non_strings(array)
  array.select do |x|
    x.class == String
  end
end
def count_elements(array)
  array.uniq.each do |x|
    count = 0
    array.each do |y|
      if y == x then count += 1
      end
    end
    x[:count] = count
  end
end
def merge_data(keys, data)
  data[0].values.map.each_with_index do |x,y|
    x.merge(keys[y])
  end
end
def find_cool(array)
  new_array = []
  array.each do |x|
    if x.any? {|key, value| value == "cool"}
      new_array << x
    end
  end
  new_array
end
def organize_schools(array)
  new_hash = {}
  array.each do |x,y|
    if new_hash.has_key?(y[:location])
      new_hash[y[:location]].push(x)
    else
      new_hash[y[:location]] = [x]
    end
  end
  new_hash
end
