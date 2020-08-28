#relationship : Hash class
empty_hash = {}
hashm = {
    "ruby" => "rubyonrails",
    "pyhton" => "django"
}
p hashm
p hashm["ruby"]

#symbol 
p :name 
#p :name.methods

#
#p "name".methods

hashWithSymbole = {
    :language => 'ruby',
    :Framework => 'sanitara'
}

hashWithSymbole2 = {
    language:'ruby',
    Framework: 'sanitara'
}

p hashWithSymbole2.fetch(:Framework)
p hashWithSymbole2.fetch(:Framework,"not found")

#store key
hashWithSymbole2.store(:type, "interpreted")
p hashWithSymbole2.length
p hashWithSymbole2.empty?

hashWithSymbole2.each { |key,value|
    puts key.to_s+": #{value}"
}

hashWithSymbole2.each_key { |key|
    puts key.to_s
}

hashWithSymbole2.each_value { |value|
    puts " #{value}"
}


#separat keys values
p hashWithSymbole2.keys
p hashWithSymbole2.values
#check key . value
p hashWithSymbole2.key?(:Framework)
p hashWithSymbole2.value?("ruby")


# create hash with default value
language = Hash.new(0)
p language

#convert array <=> hash
arrayHash =  hashWithSymbole2.to_a
hashArray  = arrayHash.to_h

#sort a hash
p hashArray.sort 
p hashArray.sort_by { |key,value| value }

#delete
p hashArray.delete(:Framework)
p hashArray

#select(same for reject) 
p hashArray.select {|key,value| value.length > 6}

#merge two hashes
p hashArray.merge(hashWithSymbole2)

def custom_merge(hash1,hash2) 

    hash1.each { |key,value|
                unless hash2.keys.include?(key)
                    hash2[key] = value
                end
    }
    hash2
end

p custom_merge(hashArray,hashWithSymbole2)

#challenge 
texte = "najib najib raihan ? ali "
hashWords = {}

def custom_words_hash(text,hashName) 
    words = text.split(" ")
    words.each { |key|
            hashName[key.to_s] = words.count(key)
    }
    hashName    
end
p custom_words_hash(texte,hashWords)
