numbers = [1,2,3,4,5,6,7]

numbers.each do |i|  #i:item  for i in numbers
    print i
end

puts

(0..10).each do |t|
    (0..10).each do |i|
        print(t*i) 
    end
end

puts

numbers.each_with_index do |item,index|  #i:item  for i in numbers
    puts("index #{index} : #{item}")
end

#while
j = 0
while j < numbers.length do
    if j==3 
        break
    end
    j+=1 
end

#operation array 
p numbers.reverse! #(reverse with assign)
p numbers.sort
p numbers+numbers  #.concat()
p numbers.max #min
p numbers.include?(7)
p numbers.index(2)

#All = select + reject
#select
matches = numbers.select do |item|
    item>3
end
p matches

matchesOpposit = numbers.reject do |item|
    item>3
end
p matchesOpposit

#partition return [select,reject]
matchesMatrix = numbers.partition do |item|
    item>3
end
p matchesMatrix
Selecta , Rejecta = matchesMatrix
p Selecta
p Rejecta

#method 1
squares = []
numbers.each do |item|
    squares.push(item**2)
end
p squares

#method 2
squares2 = []
squares2 = numbers.map {|item| item**2}
p squares2

squares2_0 = []
squares2_0 = numbers.map do |item| item**2 end
p squares2_0

#method3
squares3 = []
squares3 = numbers.collect {|item| item**2}
p squares3


###### unpack a  multidimensional array
x = [1,2]
a , b= x
p a
p b