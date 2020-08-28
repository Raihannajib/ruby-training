

#Blocks (instructions)
#must be attached to a method call
#{} / do end
#called once
#isolate action away from method 


3.times {
    #block 
    puts "ruby"
}
###
3.times do 
    #block 
    puts "ruby"
end

#block varible (local)
3.times { |i|
    puts "i: #{i}"
}
##
3.times do |i|
    puts "i: #{i}"
end
#puts i outside of block gonna gives u error (we took about local variable)

####upto/downto
#i block variable
#for i=3  i>=1 i--
3.downto(1){ 
    |i| puts "i down: #{i}"
}
#for i=3 i<=7 i++
3.upto(7){ 
    |i| puts "i up: #{i}"
}
#for i=3 i<=9 i+=3
3.step(12,3) { 
    |i| puts "i step 3: #{i}"
 }

 #yield keyword
def pass_control 

    puts "begin"
    yield "argument" #pass control from method to block
    puts "end"
end
 pass_control { |argument| puts "#{argument} me a block"}

 def pass_control 

    puts "begin"
    if block_given?
        puts yield #pass control from method to block
    end
    puts "end"
end
 pass_control {  "me a block 2"}


 ############################################################## Proc 

 #proc
 cubes = Proc.new {|item| item**3}
 p [1,2,3].map(&cubes)
 p cubes.call(5)

 ## convert method to a proc &
 #Proc.new {|item| item.to_s} --->
 p [1,2,3].map(&:to_s)
  #Proc.select {|item| item.odd?} --->
 p [1,2,3].select(&:odd?)

#call proc
 Hello = Proc.new {puts "hello world"}
 Hello.call
 3.times(&Hello)


 ################# proc take param , proc is param
greeting = Proc.new {|name| puts "hello Mr #{name}"}

def use_procc(name , &procc) 
    procc.call(name)
end

use_procc("najib",&greeting)

#Proc dont care about param recieved
#########################################################lambda
#so for security reason : lambda

greeting = lambda {|name| puts "hello Mr #{name}"}

def use_procc(name , &procc) 
    procc.call(name)
end

use_procc("najib",&greeting)
