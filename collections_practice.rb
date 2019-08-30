def begins_with_r(arr)
  arr.all?{|el| el[0].downcase == "r"}
end

def contain_a(arr)
  arr.select{|el| el.downcase.include?("a")}
end

def first_wa(arr)
  arr.select{|el| el[0..1].downcase == "wa"}.first
end

def remove_non_strings(arr)
  arr.select{|el| el.class == String}
end

def count_elements(arr)
  counter_hash = Hash.new(0)
  arr.each {|el|
  counter_hash[el] += 1}
  result = []
  counter_hash.each do |name, count|
    result << {:name => name[:name], :count => count}
  end
  result
end

def merge_data(keys, data)
  result = []
     data.select do |ind_data|
       ind_data.each do |name1, data|
         keys.each do |key|
           key.each do |key2, name2|
             if name1 == name2
               result << key.merge(data)
             end
           end
         end
       end
     end
     result
end

def find_cool(arr)
  arr.select do |ind_hash|
    ind_hash[:temperature] == "cool"
  end

end

def organize_schools(hash)
 print hash
 location_hash = Hash.new([])
  hash.each do |school, loc|
    location_hash[loc[:location]] = []

  end
  hash.each do |school, loc|
    location_hash[loc[:location]] << school

  end
  location_hash
end
