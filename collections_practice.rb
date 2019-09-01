require "pry"

def begins_with_r(arr)
  i = 0
  ret_arr = []
  while i < arr.length
    if arr[i].start_with?("r")
      ret_arr.push(arr[i])
    end
    i += 1
  end
  if ret_arr == arr
    return true
  else
    return false
  end
end

def contain_a(arr)
  i = 0
  ret_arr = []
  while i < arr.length
    if arr[i].include?("a")
      ret_arr.push(arr[i])
    end
    i += 1
  end
  ret_arr
end

def first_wa(arr)
  i = 0
  while i < arr.length
    cur_elem = arr[i].to_s
    if cur_elem.start_with?("wa")
      return cur_elem
    end
    i += 1
  end
end

def remove_non_strings(arr)
  i = 0
  ret_arr = []
  while i < arr.length
    if arr[i].class == String
      ret_arr.push(arr[i])
    end
    i += 1
  end
  ret_arr
end

def count_elements(arr)
  ret_hash = Hash.new(0)
  ret_arr = []
  arr.each do |index|
    ret_hash[index] += 1
  end
  ret_hash.each do |name, num|
    ret_arr.push({name: name[:name], count: num})
  end
  ret_arr
end

def merge_data(keys, data)
  keys.each do |hash_one|
    data.each do |hash_two|
      hash_one.merge!(hash_two[hash_one[:first_name]])
    end
  end
end

def find_cool(arr)
  ret_arr = []
  arr.each do |index|
    if index[:temperature] == ("cool")
      ret_arr.push(index)
    end
  end
  ret_arr
end

def organize_schools(obj)
  ret_hash = Hash.new(0)
  obj.each do |school, hash|
    hash.each do |loc_key, location|
      if ret_hash.include?(location)
        ret_hash[location].push(school)
      else
        ret_hash[location] = [school]
      end
    end
  end
  ret_hash
end
