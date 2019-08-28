# your code goes here

def begins_with_r(array)
	array.all? do |word|
		letters = word.split('')
		if letters[0] == 'r'
			true
		else
			false
		end
	end
end

def contain_a(array)
	arr = []
	array.each do |word|
		if word.include?('a')
			arr.push(word)
		end
	end
	arr
end

def first_wa(array)
	array.find do |word|
		if word[0..1] == 'wa'
			return word
		end
	end
end

def remove_non_strings(array)
	array.delete_if do |ele|
		ele.class != String
	end
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|word| counts[word]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
	arr = []
	array.select do |entry|
		if entry.has_value?("cool")
			arr.push(entry)
		end
	end
	arr
end

def organize_schools(schools)
	locations = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if locations[location] == nil
          locations[location] = [school]
        else
          locations[location] << school
        end
      end
    end
    locations
end
