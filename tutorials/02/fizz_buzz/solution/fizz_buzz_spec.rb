# The completed test suite for FizzBuzz
# Run on the command line with `rspec fizz_buzz_spec.rb`

require 'rspec'
require_relative 'fizz_buzz'

RSpec.describe 'fizz_buzz' do
  it 'returns Fizz for a multiple of 3' do
    expect(fizz_buzz(9)).to eq('Fizz')
  end

  it 'returns Buzz for a multiple of 5' do
    expect(fizz_buzz(10)).to eq('Buzz')
  end

  it 'returns FizzBuzz for a multiple of 3 and 5' do
    expect(fizz_buzz(30)).to eq('FizzBuzz')
  end

  it 'returns the number when the number is not a multiple of 3 or 5' do
    expect(fizz_buzz(19)).to eq(19)
  end

  # Bonus test case for invalid input
  it 'raises an error when given input that is not a number' do
    expect { fizz_buzz("hello") }.to raise_error
  end
end
