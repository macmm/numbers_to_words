require 'rspec'
require 'numbers_to_words'

describe 'translate_number' do
  it 'returns the word form of an integer below 9' do
    translate_number(7).should eq 'seven'
  end

  it 'returns the word form of an integer below 19' do
    translate_number(13).should eq 'thirteen'
  end

  it 'returns the word form of any integer below 100' do
    translate_number(87).should eq 'eighty seven'
  end

  it 'returns the word form of any integer below 100, for numbers ending in 0' do
    translate_number(50).should eq 'fifty'
  end

  it 'returns the word form of any integer below 1000' do
    translate_number(175).should eq 'one hundred seventy five'
  end

  it 'returns the word form of any integer below 1000, for numbers ending in a teen' do
    translate_number(117).should eq 'one hundred seventeen'
  end

  it 'returns  the word form of any integer below 1 million' do
    translate_number(198345).should eq 'one hundred ninety eight thousand three hundred forty five'
  end

  it 'returns  the word form of any integer below 1 billion' do
    translate_number(119310254).should eq 'one hundred nineteen million three hundred ten thousand two hundred fifty four'
  end

  it 'returns the word form of any integer below 1 trillion' do 
    translate_number(19303849404).should eq 'nineteen billion three hundred three million eight hundred forty nine thousand four hundred four'
  end

  it 'returns the word form of any integer below 1 trillion, for numbers with lots of zeroes' do 
    translate_number(19300000404).should eq 'nineteen billion three hundred million four hundred four'
  end
end