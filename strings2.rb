#some object methods
=begin 
.length 
.upcase
.downcase
.capitalize (first char upcase)
.swapcase  up <-> down 
p := "string".inspect
print/p/puts return nil(null)
=end


 ###strings : String

 najib = String.new("najib")
 p najib

 #Multiline String
 skills= <<MLS 
    php
    js
    java
    ruby
MLS
puts skills
p skills

# "" more efficient than ''

p "Yabana" < "Kabana"
# + , .concat() , << : are the same

p "najib".prepend("raihan")  # opppsite concat()

#string[2] = string.slice(2)
#string[string.length-1] = string[-1]

#extract character : string[2,8] = string.slice(2,8) 

p "string"[1,4]
p "string".slice(1,4) # [1,1+4-1]
p "string".slice(1..4) # 1234
p "string"[1..4] #[1,4]

#revesing
 
p "ruby".reverse()
 #bang
 #avoid assignement name = name.capitlize
 
 name = "ruby"
 name.capitalize! #!: do assignment
 p name

 #contain
p name.include?('R')
p name.empty?

#operations 
sentence = "najib baj f nnna ga "
p sentence.split(" ")
p sentence.chars
#each_char
sentence.each_char { |item| puts item }

#Opposite 
#join
#sentence2 = sentence.split(" ").join(" ")
sentence2 = sentence.split(" ").join(" ")
p sentence2 << "T" #(<< = +)
p sentence2.index("na")
p sentence2.insert(5,"e")
p sentence2.squeeze