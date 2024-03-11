require 'spec_helper'
require_relative '../caeser_cipher.rb'

RSpec.describe 'Caeser Cipher' do

    context 'with lowercase letters' do
        it 'returns the correct output' do
            expect(caeser_cipher('aaa', 1)).to eq('bbb')
        end
    end
    
end