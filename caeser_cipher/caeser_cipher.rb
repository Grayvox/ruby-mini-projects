require 'pry'
require 'pry-byebug'

def caeser_cipher(string, shift = 0)
    if string =~ /[^a-z^A-Z^\s]/
        return 'Error! All elements must be alphabetical.' 
    end

    stringArray = string.chars.map do |element| 
        elementShift = element.ord + shift
        elementShift.chr
    end
    shiftedStr = stringArray.join
    shiftedStr
end

p caeser_cipher('zzz ZZZ', 5)
