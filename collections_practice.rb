require "pry"

def begins_with_r(arr)
  i = 0
  while i < arr.size
    if arr[i].split("").first != "r"
      return false
    end
    i += 1
  end
  true
end

def contain_a(arr)
  new_arr = []
  arr.each do |str|
    if str.split("").index("a") != nil
      new_arr << str
    end
  end
  new_arr
end

def first_wa(arr)
  i = 0
  while i < arr.size
    if arr[i].slice(0, 2) == "wa"
      return arr[i]
    end
    i += 1
  end
end

def remove_non_strings(arr)
  new_arr = []
  arr.each do |str|
    if str.is_a?(String) == true #why did this not work with false?
      new_arr << str
    end
  end
  new_arr
end


def count_elements(arr)
  arr.each do |element|
    element[:count] = 0
    name = element[:name]
    arr.each do |hash_name|
      if hash_name[:name] == name
        element[:count] += 1
      end
    end
  end
  arr.uniq #
end

def merge_data(arg1, arg2)
  new_arr = []
  arg1.each do |data_set|
    name = data_set[:first_name]
    arg2.each do |data_set_2|
      new_arr << data_set.merge(data_set_2[name])
    end
  end
  new_arr
end

def find_cool(arr)
  result = []
  arr.each do |elements|
    elements.each do |key, value|
      if value == "cool"
        result << elements
      end
    end
  end
  result
end

def organize_schools(arr)
  results = {}
  arr.each do |school, location_hash|
    location = location_hash[:location]
    if results[location]
      results[location] << school
    else
      results[location] = []
      results[location] << school
    end
  end
  results
end
