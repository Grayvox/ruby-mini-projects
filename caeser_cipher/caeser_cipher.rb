require 'pry'
require 'pry-byebug'

def caeser_cipher(string, shift = 0)
    if string =~ /[^a-z^A-Z^\s]/
        return 'Error! All elements must be alphabetical.' 
    end

    stringArray = string.chars.map do |element| 
        elementShift = element.ord + shift

        if element.ord == 32
            next ' '
        elsif elementShift > 90 && element == element.upcase
            difference = elementShift - 90
            elementShift = 64 + difference
        elsif elementShift > 122 && element == element.downcase
            difference = elementShift - 122
            elementShift = 96 + difference
        end

        elementShift.chr
    end
    shiftedStr = stringArray.join
    shiftedStr
end

p caeser_cipher('Never gonna give you up', 5)