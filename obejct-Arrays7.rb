# object position in computer memory
# is custom container for data

a =[1,2]
b = [1,2]

p a.object_id
p b.object_id

b = a
# a gonna point in the b position
# so a and b pointing in the same array 
p a.object_id
p b.object_id

a.push(3)
p a
p b

#to separate a and b 
#duplicate object
b = a.dup
a.push(3)
p a
p b

####splat arguments 
def sumOfNumbers (*numbers) # several aerguments
    # args is an array
    sum = 0
    numbers.each { |item|

        sum+=item
    }
    #return sum
    sum
end

p sumOfNumbers(12,45,78,6,3,5)
p sumOfNumbers(1,2)

## Any
#check if any element in array is odd
p [0,4,2,32].any? { |item|
    item.odd?
}

#all is pair
p [0,4,2,32].all? { |item|
    item.even?
}

# select method get all elements
# but find return first element
p [2,4,2,32].find { |item|
    item.even?
}

#remove all duplicate 
p [0,0,5,9,6,4,4].uniq #i

def custom_uniq(array) 

    newA = []
    array.each_with_index { |item,index|
            unless newA.include?(item)
                newA.push(item)
            end
    }
    newA
end

p custom_uniq([0,0,5,9,6,4,4])

#remove nil vaues from array
p [1,2,nil].compact

#.reduce(previous,current)
p [1,2,3].reduce { |previous , current| previous+current}

#multidimensional array to one array
p [[1,2],["a",22]].flatten

#zip elements of  arrays into sub-array in one array
p [1,2].zip(["a","b"])

def custom_uniq(array) 

    newA = []
    array.each_with_index { |item,index|
            unless newA.include?(item)
                newA.push(item)
            end
    }
    newA
end

p custom_uniq([0,0,5,9,6,4,4])

def custom_zip (arr1,arr2)

    zipa = []
    arr1.each_with_index { |item,index|
            zipa.push([item,arr2[index]])
    }
    zipa

end
p custom_zip([1,2],[1,2])

def custom_sample (arr1)
    arr1[rand(0..(arr1.length-1))]
end
p custom_sample([1,2,3,4])

def custom_multiply (arr1,number)
    i=number
    result = []
    while i>0
        arr1.each {|item| result.push(item)}
        i-=1
    end
    result
end
p custom_multiply([1,2,3,4],2)

#union with exclude
def custom_combineExclude(arr1,arr2) 
    result = []
    arr1.each_with_index { |item,index|
        unless result.include?(item) 
            result.push(item)
        end
        unless result.include?(arr2[index])
            result.push(arr2[index]) 
        end
    }
    result = result.compact
end

# def custom_combineExclude2(arr1,arr2) 
#     arr1.concat(arr2).uniq !
#     arr1
    
# end

p custom_combineExclude([1,2,3,4],[1,2,5])
# p custom_combineExclude2([1,2,3,4],[1,2,5])
#
p [1,2,3,4] | [1,2,5]


#remove commun elements
p [1,2,3,4] - [1,2,5]

def custom_remove(arr1 , arr2) 
        arr2.each { |item|
            if arr1.include?(item)
                arr1.delete(item) 
            end
        }
        arr1
end
p custom_remove([1,2,3,4],[1,2,5])

#array intersection
p [1,2,3,4] & [1,2,5]