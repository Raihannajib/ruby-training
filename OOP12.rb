#class : blueprint ,pattern ,template , outline for object
# every class has at least super class(except BasicObject)

#array of superclasses
p Bignum.ancestors
# p Fixnum.ancestors
# p Float.ancestors
# p Array.ancestors

#get cummon methods between Float and Integer
##p Float.methods & Integer.methods

#create a class

require_relative "./module-mixins13.rb"

class Person
    #initialize is private method
    def initialize(job)
        #job is private
        @job = job
        @appli =[]
    end 



    # we can replace getter and setter by
    # attr_accessor :job
    attr_accessor :appli
    #getter method  (attr_writer :job)
    def job 
        @job
    end

    #setter method  (attr_reader :job)
    def job=(job1) 
        @job = job1
    end

    def info
        puts "job: #{@job}" 
    end

       #module appStore
    def find_app_store(name)
        app = AppStore.find_app(name)
        appli.push(app)
    end

    public

    #override to_s method
    def to_s
        puts "job: #{@job} , #{self.class}"  #self refers to cuurent object
        greeting()
    end

    def compare_with(other) 
        if self.job.length <= other.job.length
            1
        else
            2 
            
        end
    end

    #private method: used inside of class (design) not callable(cannot invoked) by object 
    private
    
    def greeting
        puts "hello world"
        Hey()
    end

    #protected : called within tha same family of object
    protected 

    def Hey 
        puts "hey"
    end
end

p1 = Person.new("t")
p2 = Person.new("f")
#get object_id
puts p1 , p2
#get address
puts  p1.object_id , p2.object_id


Policman = Person.new("programmer")
puts Policman.instance_variables
Policman.info
#puts Policman.methods
puts Policman.respond_to?(:to_s) #method of object
Policman.to_s

#self context of object (refers to)

#get job
puts Policman.job
#set job
Policman.job=("rubyman")
puts Policman.job

# #impossible
# Policman.greeting
# Policman.Hey

doctor = Person.new("doctor")
puts doctor.compare_with(Policman)


#using getter better

#module search in strcuct
doctor.find_app_store(:face)
puts doctor.appli



###################################################Monkey patching : add some features to existing class - ruby combine all class definitions any process

p [1,2,3,nil,2].cleaning

class Array

    def cleaning
        self.compact.uniq
    end
end

p [1,2,3,nil,2].cleaning
