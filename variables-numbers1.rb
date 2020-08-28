puts "hello world"
#print
#p :print + additional things about output

=begin 
print
p :print + additional things about output
=end

p 12/5
p 12.0/5
p 2**4
#.modulo(): %
#.dev(): /

#Comman Line arguments
#ARGV is an array
p ARGV

#ruby is dynamically typed : variables types do not have to be declared  
#variable is a reference (points)(=) to an object , that object is subject to change 
# a is just an address(reference to object Fixnum-2- that allocated in heap)   
a= 2

#parallel assignment and swapping
a,b,c = 1.0,2,3
p a,b,c

a,b,c = c,b,a
p a,b,c

#constant
 PI = 3.14159
 #string interpolation
 p "i am pi #{PI+1}"

 

#casting to string/integer
number = 12
p number
p "age "+number.to_s
p "12".to_i
p 12.next


#12.class Fixnum
#12.0.class Float
#99............... Bignum

#input: name = gets

#true TrueClass/false FalseClass
p 4.odd? #impair
p 5.even? #pair
p 3.between?(2,5) #into

#float methods 
p 10.5.floor #down
p 10.5.ceil #up
p 10.6.round #up down depend
p 10.567.round(2)
p -20.abs


