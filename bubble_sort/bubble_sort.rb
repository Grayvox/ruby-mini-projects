require 'pry'
require 'pry-byebug'

def bubble_sort(array = [])

    array.each do ||

        array.each_with_index do |element, index|
            next_el = array[index + 1]
    
            if !next_el then next end
    
            if element > next_el
                array[index], array[index + 1] = array[index + 1], array[index]
            end
    
        end

    end

end