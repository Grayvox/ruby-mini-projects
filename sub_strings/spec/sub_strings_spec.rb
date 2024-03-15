require 'spec_helper'
require_relative '../sub_strings.rb'

RSpec.describe 'Substrings' do

    context 'with single word and single letter' do
        it 'returns the correct amount of substrings found' do
            expect(substrings('Hello', ['o'])).to eq({'o' => 1})
        end
    end

end