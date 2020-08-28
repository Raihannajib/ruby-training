#class range
nums = 1..5
p nums.first
p nums.last
p nums.last(2)
p nums.size

#check 
p nums.include?(4)
p nums === 4
#exlude
nums_exclude_5 = 1...5
p nums_exclude_5.size

#alphabit
alphabet = "A".."Z"
p alphabet.first(10)

#generate random numbers
puts rand.round(2) # two degits aftler floating point
puts rand(100).round(2) #exclude o..9
puts rand(100..200)


#arrays : store objects
p [].class
person = [["najib",23],["raihan", 23]]
p person

#create an array from string .split(" ")
strings = %w[najib raihan]
p strings

#create an array with array.new (allocation)
array = Array.new(10)
p array

array_person = Array.new(10,["",0])
p array_person

p person.length
p person.fetch(1)
p person.fetch(2,false)


number = [1,2,3,5,3]
num1 = number[0,2] #0,1
num2 = number[0..2] #include 2
num3 = number.values_at(0,2)
p num1
p num2
p num3
# count number 3
p number.count(3)

#convert range to an array
letters = ("a".."c").to_a
#add at end
letters.push "22"
    #shovel operetor 
letters << "22"
#remove from end
letters.pop()
letters.pop(2) # remove two last items

#remove from begin begin
letters.shift
letters.shift(2)
    #shovel operetor 
letters << "22"
# add to begin
letters.unshift("22")


#add where you want
letters.insert(0,"1","2")
p letters

#check equality
p letters == number
#spaceship
p letters <=> number #(nil , 0,1,-1)
p 2<=> 1
p 1 <=> 2
p 1 <=> 1
p 1 <=> "1" #(NO RELATION)

#check if is an array of float
p ["a","s"].is_a?(Float)

=begin
try to check
ri ClassName
ri Array 
ri Class.method
=end


