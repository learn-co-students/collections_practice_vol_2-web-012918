# your code goes here
def begins_with_r(array)
  starts_with_r = true
  array.each do |word|
    if word.start_with?("r")
    else
    starts_with_r = false
    end
  end
  starts_with_r
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include? "a"
      new_array << word
    else
    end
  end
  new_array
end

def first_wa(array)
  array.each do |word|
    if word.is_a? String
      if word.include? "wa"
        return word
      else
      end
    else
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |word|
    if word.is_a? String
      new_array << word
    else
    end
  end
  new_array
end

def count_elements(array)
  counter_hash = {}
  counter_array = []
  array.collect do |element|
    element.each do |key, value|
      if counter_hash.has_key?(value)
        counter_array.each do |name_counts|
          if name_counts.has_value?(value)
            name_counts[:count] += 1
          end
        end
      else
        counter_hash[value] = 1
        counter_array << {key => value, count: counter_hash[value]}
      end
    end
  end
counter_array
end

=begin
counter_hash = {counter: 1}
hash_holder = []
array.each do |element|
  puts element
  holder_hash = {element}
  puts holder_hash
  if array.include?(element)
    counter_hash[:counter] += 1
  hash_holder.push(holder_hash.merge(counter_hash))
end
hash_holder
=end

def merge_data(keys, data)
  merged_data = []
  counter = 0
  until counter == keys.length
    data.each do |person|
      person.each do |name, stats|
        merged_data.push(keys[counter].merge(stats))
        counter +=1
      end
    end
  end
  merged_data
end

def find_cool(array)
  cool_array = []
  array.each do |person|
    if person[:temperature] == "cool"
      cool_array.push(person)
    end
  end
  cool_array
end

def organize_schools(school)
  organized_schools = {}
  school.each do |schools, loc_hash|
    loc_hash.each do |key, value|
      if organized_schools.include?(value)
        organized_schools[value] << schools
      else
        organized_schools[value] = [schools]
      end
    end
  end
  organized_schools
end
