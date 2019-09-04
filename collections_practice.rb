
def begins_with_r(arr)
i=0
checker=[]
  while i<arr.length
    arr.each {|word|
      if word.start_with?('r')
        checker << true
        i+=1
      else
        checker << false
      end}
  end
checker.all? {|word| word == checker[0]}
end 

def contain_a(arr)
  i=0
  a=[]
  while i<arr.length
    arr.each {|word|
      if word.include?('a')
        a << word
        i+=1
      else
        i+=1
      end}
  end
  a
end

def first_wa(arr)
  i=0 
  while i< arr.length 
    arr.each {|word|
      word = word.to_s
      if word.start_with? ('wa')
        return word
      else
        i+=1
      end}
  end
end

def remove_non_strings(arr)
  arr.keep_if {|word| word.is_a?(String)}
  arr
end

def count_elements(arr)
  collection = []
  arr.each {|x| 
  x[:count]= arr.count(x)
  collection << x
  arr.delete_if {|y| y== x}
  }
  collection

end

def merge_data(keys, data)
  merged_data = []
  data.each{|array|
    array.each{|hash|
      hash.each{|k, hash2|
        keys.each_index{|x|
        if k == keys[x][:first_name]
      
          merged_data << keys[x].merge(array[k])
          
        end}
      }
    }
  }  
  merged_data
end

def find_cool(hash)
  cool = []
    hash.each{|array|
    array.each{|hash2|
      hash2.each{|k, v|
        if k == "cool"
          cool << array
        end
      }
    }
  }
  cool
end

def organize_schools(schools)
  organized = {}
  schools.each{|hash, value|
    organized[value[:location]]=[]
    }
   schools.each{|hash, value|
    organized
    if organized.key?(value[:location]) 
      organized[value[:location]] << hash
    end
    }
  organized
  
  
end