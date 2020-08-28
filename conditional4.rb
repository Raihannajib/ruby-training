def hello
    puts "hello world!"
end

hello

## if !(condition ) is unless (condition)

#######case
def food(food)
    case food
    when "burger"
        "bad food"
    when "apple"
        "good"
    else
        "nice"
    end
end

puts food("apple")


def valide(note)
    case note
    when 10..20
        "valide"
    else
        "sorry :("
    end
end

puts valide(15)

####### while

i=0
while i<10  #until
    puts i+=1
end
#######if

y ||= 5 # if y is null then assign 5
puts y


# def military_normal(time)
#     time.to_s !
#     if time.length == 4
#          hours = time[0,1]
#          minutes = time[2,3]
#          hours.to_i !
#          if hours >= 12 || hours <24
#             hours-=12
#          end
#          hours.to_s ! 
#          date = hours+":"+minutes
#          return date
#     else
#         return nil

#     end
# end



# #1622 gooa work or not
# 1622.respond_to?("military_normal")


    