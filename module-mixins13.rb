#module(name in upperCamelCase) istoolbox or container of methods / constant
#module cannot be used to create instance
#mixed into class to add behavior (inject it by self)
#create namespace for method

#access module method by .
#access module constant by ::(scope resolution operator)


module TestMe 
    PI = 3.14
    def self.Hello(name) 
        puts name
    end
end

TestMe.Hello("najib")
puts TestMe::PI

#built0-in methods 
#Math.sqrt() , sin(90)/Math::PI

################################# Mixin (class has-a module:composition)
#is module that add to 
#avoid duplication of methods (violate the DRY principal)

class Number

    #mixin
    #to use oiginal implementation of <
    # prepend Comparable : should use prepend (prioriy for method module) in place of include
    # extend Comparable : access method of module in class level (without instantiat object)
    include Comparable #prioriy for method class

    def initialize(num3) 
        @num = num3
    end

    attr_accessor :num
 
    
    #overload operator <=>
    def <=>(other)
        if @num >= other.num
            1
        else
            -1
        end
    end  
end

num1= Number.new(1)
num2 = Number.new(2)  
p num1 <=> num2


class Game 

    #include module
    include Enumerable

    def initialize 
        @stars = []
    end

    attr_accessor :stars

    def add_star(star)
        stars.push(star)
    end

    #each fromable enumar
    def each 
        stars.each { |snak|
            yield(snak)
        }
    end
end


game = Game.new
game.add_star("1")
game.add_star("2")
game.each {|s| puts s }


#Struct: mini class (only attributes) 

module AppStore

    App = Struct.new(:nama,:developer)

    APPS = [
        App.new(:face,:facebook),
        App.new(:what,:yahoo)
    ]

    def self.find_app(name) 
        APPS.find {|app| app.nama == name }
    end


end