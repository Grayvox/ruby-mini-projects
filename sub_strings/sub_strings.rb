require 'pry'
require 'pry-byebug'

def substrings(string, dictionary = [])
    results = {}
    lower_string = string.downcase

    dictionary.each do |element|
        lower_element = element.downcase
        if lower_string.scan(/#{lower_element}/).count <= 0 then next end

        results[element] = lower_string.scan(/#{lower_element}/).count
    end

    results
end