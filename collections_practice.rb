require 'pry'
# def begins_with_r(array)
#   answer = true
#   for word in array do
#     if !word.start_with?("r")
#       answer = false
#     end
#   end
#   answer
# end

def begins_with_r(array)
  answer = true
  array.each do |word|
    if !word.start_with?("r")
      answer = false
    end
  end
  answer
end

def contain_a(array)
  array.select do |word|
    word.include? "a"
  end
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.is_a?(String)
  end
end

def count_elements(array)

  array.each do |outer_element|
    outer_name = outer_element[:name]
    outer_element[:count] = 0
    # on each outer iteration, run a complete inner iteration, compare one outer to each inner
    array.each do |inner_element|
      if inner_element[:name] == outer_name # if name values match
        outer_element[:count] += 1 # increment current element of outer iteration
      end
    end
  end

  # binding.pry
  array.uniq
end

def merge_data(keys, data)
  merged = [{},{}]
  i = 0

  data.each do |data_hash|
    # binding.pry
    data_hash.each do |data_name_key, attributes|
      # binding.pry
      keys.each do |person|
        # binding.pry
        person.each do |first_name, val|
          # binding.pry
          if person[first_name] == data_name_key
            merged[i][first_name] = val
            attributes.each do |attribute, attribute_val|
              # binding.pry
              merged[i][attribute] = attribute_val
            end
          end
        end
      end
      # binding.pry
      i += 1
    end
  end

  merged
end

def find_cool(cool_array)
  found = []

  cool_array.each do |person_hash|
    # binding.pry
    person_hash.each do |person_key, person_val|
      if person_val == "cool"
        found << person_hash
      end
    end
  end
  found
end

def organize_schools(schools_hash)
  organized = {}
  schools_hash.each do |school, attributes_hash|
    attributes_hash.each do |location, location_name|
      # binding.pry
      organized[location_name] ||= []
      organized[location_name] << school
    end
    # binding.pry
  end
  organized
end
