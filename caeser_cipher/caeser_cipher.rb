require 'pry'
require 'pry-byebug'

def caeser_cipher(string, shift = 0)
    # Catches unallowed characters
    if string =~ /[^a-z^A-Z^\s^!^"^'^.^,^0-9^?]/ then return 'Error! All elements must be alphabetical.' end

    stringArray = string.chars.map do |element| 
        elementShift = element.ord + shift
        
        # Wraps letters from Z to A 
        if elementShift > 90 && element == element.upcase
            difference = elementShift - 90
            elementShift = 64 + difference
        elsif elementShift > 122 && element == element.downcase
            difference = elementShift - 122
            elementShift = 96 + difference
        end

        # Catches 'allowed characters' that are outside the alphabet. See ../caeser_cipher/README.md
        case element.ord
        when 32..34, 39, 44, 46..59, 63
            # Escapes execution for the next character
            next element
        end

        elementShift.chr
    end
    shiftedStr = stringArray.join
    shiftedStr
end

p caeser_cipher("Will? This, work??? I know it's bad...", 3)