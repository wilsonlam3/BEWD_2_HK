require 'rspec'
require_relative 'secret_number'

RSpec.describe SecretNumber do
  describe '#check' do
    let(:secret) { 5 }
    let(:subject) { SecretNumber.new(secret) }

    it 'returns 0 when the guess is correct' do
      guess = secret
      expect(subject.check(guess)).to eq(0)
    end

    # Find additional matchers at https://github.com/rspec/rspec-expectations
    it 'returns a number < 0 when the guess is too low'
    it 'returns a number > 0 when the guess is too high'
  end
end
