
require "pry"
# Become proficient at manipulating arrays
# Practice using higher level Ruby enumerators like .collect and .sort
array = [25, 7, 1]

#sort_array_asc
#   should return an array sorted in ascending order 
def sort_array_asc(array)
    array.sort
end
print sort_array_asc(array)
#=> [1, 7, 25]
puts ""

#--------------------------------------------------------------------------------
#sort_array_desc
#   should return an array sorted in descending order 

def sort_array_desc(array)
    array.sort {|left, right| right <=> left }
end

print sort_array_desc(array)
#=> [25, 7, 1]
puts ""

#----------------------------------------------------------------------------------
#sort_array_char_count
#   should return an array in ascending order sorted by the number of characters in the string 
array = ["dogs", "cat", "Horses"]

def sort_array_char_count(array)
    array.sort {|a, b| a.length <=> b.length}
end
print sort_array_char_count(array)
#=> ["cat", "dogs", "Horses"]
puts ""

#------------------------------------------------------------------------------------
#swap_elements
#   swap the second and third elements of an array 
array = ["blake", "ashley", "scott"]

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end
print swap_elements(array)
#=> ["blake", "scott", "ashley"]
puts ""

#------------------------------------------------------------------------------------
#reverse_array
#   reverse the order of an array of integers 
array = [12, 4, 35]

def reverse_array(array)
    array.reverse 
end 
print reverse_array(array)
#=> [35, 4, 12]
puts ""

#------------------------------------------------------------------------------------
#kesha_maker
#   taking an array as an input, change the 3rd character of each element to a dollar sign. 
array = ["blake", "ashley", "scott"]

def kesha_maker(array)
    array.each do |item|
        item[2] = "$"
    end
end
print kesha_maker(array)
#=> ["bl$ke", "as$ley", "sc$tt"]
puts ""

#------------------------------------------------------------------------------------
#find_a
#   find all words that begin with "a" in the following array 
array = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]

def find_a(array)
    array.find_all do |word|
        word[0] == "a"
    end
end
# You can also use #select instead of find_all 
print find_a(array)
#=> ["apple", "avis", "arlo", "ascot"]
puts ""

#------------------------------------------------------------------------------------
#sum_array
#   sum all the numbers in the following array 
array = [11,4,7,8,9,100,134]

def sum_array(array)
    sum = 0 
    array.each {|num| sum += num}
    sum
end

print sum_array(array)
#=> 273
puts ""

# using reduce method
    # array.reduce(:+)

  # using inject method (short)
     # array.inject(:+)

  # using inject method (long)
     # array.inject do |sum,x|
     #  sum + x
     # end
#------------------------------------------------------------------------------------
#add_s
#   Add an "s" to each word in the array except for the 2nd element in the array 
array = ["hand","feet", "knee", "table"]

def add_s(array)
    array.map do |word|
        if array[1] == word 
            word 
        else
            word + "s"
        end
    end
end
print add_s(array)
#=> ["hands", "feet", "knees", "tables"]
puts ""
