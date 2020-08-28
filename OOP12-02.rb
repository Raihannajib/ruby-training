=begin
    In Ruby, a method provides functionality to an Object. A class method provides functionality to a #class itself, 
    while an instance method provides functionality to one #instance of a class.
     We cannot call an instance method on the class itself, and we cannot directly call a class method on an instance
rescue => exception

    The main difference is the behavior concerning inheritance:
     class variables are shared between a class and all its subclasses, while class instance variables only belong to one specific class.
        avoid data duplication
    
=end

# for instance
class Instance
 
    def initialize
     @count = 0
    end

    attr_accessor :count

    def add
        @count+=1
        puts self.count
    end

end

inst = Instance.new
inst.add

class ClassVarMeth
 

     @@count = 0


    def self.add
        @@count +=1
    end

end

#without instantaition because (method class)
p ClassVarMeth.add

####################################################Inheritance
#ruby supports single Inheritance

class Father 

    def initialize (nom)
        @nom = nom
    end

    attr_accessor :nom

    def me
         "me :"
    end
end

class Son < Father
    def initialize(nom,prenom)
        super(nom)
        @prenom = prenom
    end
    attr_accessor :prenom 
    attr_accessor :nom

    def to_s 
        puts "#{self.prenom} #{self.nom} "
    end

    def me(name)
        puts super() + "#{name}"  #super() not super
    end
end

najib = Son.new("raihan","najib")
p Son.ancestors
p najib.is_a?(Father)
p najib.instance_of?(Son)
p  najib.me("student")


#define singleton method for object najib

def najib.study 

    puts "software engineering"
end

najib.study
p najib.singleton_methods
# singleton class that hold study method
p najib.singleton_class  #anonymose class inherit Father class


################################################################# Hash as an argument
class User 

    def initialize(infoHash = {})
        @username = infoHash[:username]
        @password = infoHash[:password]
    end
    
    attr_accessor :username 
    
end

infoHash = {username: "najib" , password: "password"}
user1 = User.new(infoHash)
p user1.username