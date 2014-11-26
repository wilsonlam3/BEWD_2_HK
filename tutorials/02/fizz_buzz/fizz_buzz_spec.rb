require 'rspec'
require_relative 'fizz_buzz'

RSpec.describe 'fizz_buzz' do
  it 'returns Fizz for a multiple of 3' do
    expect(fizzbuzz(9)).to eq('Fizz')
  end

  it 'returns Buzz for a multiple of 5'
  it 'returns FizzBuzz for a multiple of 3 and 5'
  it 'returns the number when the number is not a multiple of 3 or 5'
end
