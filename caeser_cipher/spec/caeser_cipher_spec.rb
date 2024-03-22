require 'spec_helper'
require_relative '../caeser_cipher.rb'

RSpec.describe 'Caeser Cipher' do

    context 'with lowercase letters' do
        it 'returns the correct output' do
            expect(caeser_cipher('aaa', 1)).to eq('bbb')
        end
    end

    context 'with uppercase letters' do
        it 'returns the correct output' do
            expect(caeser_cipher('YYY', 1)).to eq('ZZZ')
        end
    end

    context 'with both upper and lowercase letters' do
        it 'returns the correct output' do
            expect(caeser_cipher('rRr', 2)).to eq('tTt')
        end
    end
    
    context 'when asked to wrap from Z to A' do
        it 'wraps the letters correctly' do
            expect(caeser_cipher('zzz', 5)).to eq('eee')
        end
    end

    context 'when a sentence is provided' do
        it 'returns the correct output' do
            expect(caeser_cipher('Never gonna give you up', 5)).to eq('Sjajw ltssf lnaj dtz zu')
        end
    end

    context 'when ALLOWED non-alphabetical characters are provided' do
        it 'returns the correct output' do
            expect(caeser_cipher('This! Is/ A. Horribly; Made: Test?', 5)).to eq('Ymnx! Nx/ F. Mtwwngqd; Rfij: Yjxy?')
        end
    end

    context 'when numbers are provided' do
        it 'returns an error' do
            expect(caeser_cipher('123', 5)).to eq('Error! All elements must be alphabetical.')
        end
    end
    
    context 'when random non-alphabetical characters are provided' do
        it 'returns an error' do
            expect(caeser_cipher('-%@', 5)).to eq('Error! All elements must be alphabetical.')
        end
    end

end