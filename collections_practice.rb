# your code goes here
def begins_with_r(arr)
arr.each do |element|
  if element.start_with?("r")==false
    return false
  end
end
true
end

def contain_a(arr)
  arr.select do |element|
    element.include?("a")
  end
end

def first_wa(arr)
  arr.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(arr)
arr.delete_if do |element|
  element.class != String
end
end

def count_elements(arr)
  empty_arr = []
  empty_hash = {}
  arr.each do |hash|
    name = hash[:name]
    if empty_hash.include?(name)
      empty_hash[name] += 1
    else
      empty_hash[name] = 1
    end
  end
empty_hash.each do |name, count|
  p_hash = {name: name, count: count}
  empty_arr << p_hash
end
empty_arr
end

def merge_data(key, data)
  data_arr = []
  key.each do |element|
    element.each do |key2, value|
      if data[0].keys.include?(value)
        temp_hash = element.merge(data[0][value])
        data_arr << temp_hash
      end
    end
  end
  data_arr
end

def find_cool(arr)
  empty_arr = []
  arr.each do |hash|
    if hash[:temperature] == "cool"
      empty_arr << hash
    end
  end
  empty_arr
end

def organize_schools(hash)
  t_hash = {}
  hash.each do |school, data|
    data.each do |key, location|
      if t_hash.include?(location)
        t_hash[location].push(school)

      else
        t_hash[location] = [school]
      end
    end
  end
  t_hash
end
