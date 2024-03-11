require 'pry'
require 'pry-byebug'

def caeser_cipher(string, shift = 0)
    if string =~ /[^a-z^A-Z^\s]/
        return 'Error! All elements must be alphabetical.' 
    end
end

p caeser_cipher('zzz ZZZ', 5)
