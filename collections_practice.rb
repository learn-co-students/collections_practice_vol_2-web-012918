# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |el|
    el.to_s != el
  end
end

def count_elements(array)
  counts = Hash.new(0)
  array.each do |el|
    counts[el] += 1
  end
  answer = []
  counts.each do |element, number|
    element.each do |key, value|
      answer << {key => value, :count=> number}
    end
  end
  answer
end

def merge_data(keys, data)
  merged = []
  data.each do |hash|
    hash.each do |student, info|
      keys.each do |key|
        merged << key.merge(info) if key.values[0] == student
      end
    end
  end
  merged
end

def find_cool(array)
  cool_hash = []
  array.each do |hash|
    hash.each do |key, value|
      cool_hash << hash if key == :temperature && value == "cool"
    end
  end
  cool_hash
end

def organize_schools(schools)
  locations = Hash.new(0)
  schools.values.each do |location|
    locations[location.values[0]] = []
  end
  schools.each do |school, location|
    locations[location.values[0]] << school
  end
  locations
end
