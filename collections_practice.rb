require 'pry'

def begins_with_r(array)
  ary = []
  array.each do |lang|
    if lang.start_with?("r")
      ary << "yes"
    else
      ary << "no"
    end
  end
  if ary.include?("no")
    return false
  else
    return true
  end
end

def contain_a(array)
  ary = []
  array.each do |v|
    if v.include?("a")
      ary << v
    end
  end
  ary
end

def first_wa(array)
  ary = []
  array.each do |v|
    v = v.to_s
    if v.start_with?("wa")
      ary << v
    end
  end
  ary.shift
end

def remove_non_strings(array)
  array.delete_if { |v| !v.kind_of?(String)}
end

def count_elements(array)
  counted = []
  names = []
  count = 1
  array.each do |h|
    h[:count] = count
     counted.each {|a| names<< a[:name]}
      if names.include?(h[:name])
        counted.map do |a|
          if a == h
            count +=1
            a[:count] = count
          else
            h
          end
        end
      else
        h[:count] = 1
        counted << h
    end
  end
  counted
end

def merge_data(hash1, hash2)
  merged_data = []
  hash1.each do |h|
    h.each do |title, name|
      hash2.each do |ary|
        ary.each do |n, data|
          if n == name
            h = h.merge(data)
            merged_data << h
          end
        end
      end
    end
  end
  merged_data
end

def find_cool(*hashes)
  array = []
  hashes.each do |a|
    a.each do |b|
      b.each do |k,v|
        if v == "cool"
          array << b
        end
      end
    end
  end
  array
end

def organize_schools(hash)
  array = []
  new_hash = {}
  hash.each do |k,v|
    v.each do |location, name|
      if !array.include?(name)
        array << name
        array.sort!
        new_hash[name] = []
      end
      new_hash[name] << k
    end
  end
  new_hash
end
