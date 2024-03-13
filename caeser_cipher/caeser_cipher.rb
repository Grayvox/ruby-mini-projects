require 'pry'
require 'pry-byebug'

def caeser_cipher(string, shift = 0)
    # Catches unallowed characters
    if string =~ /[^a-z^A-Z^\s^!^'^.^,^:^;^?]/ then return 'Error! All elements must be alphabetical.' end

    string_array = string.chars.map do |element| 
        element_shift = element.ord + shift
        
        # Wraps letters from Z to A 
        if element_shift > 90 && element == element.upcase
            difference = element_shift - 90
            element_shift = 64 + difference
        elsif element_shift > 122 && element == element.downcase
            difference = element_shift - 122
            element_shift = 96 + difference
        end

        # Catches 'allowed characters' that are outside the alphabet. See ../caeser_cipher/README.md
        case element.ord
        when 32..33, 39, 44, 46..47, 58..59, 63
            # Escapes execution for the next character
            next element
        end

        element_shift.chr
    end
    shifted_string = string_array.join
    shifted_string
end