require 'rspec'

require_relative 'secret_number'

# describe SecretNumber do
# 	 it "says hello" do
# 	 	expect(SecretNumber.new.hello).to include "Hello"
# 	end
# end


RSpec.describe SecretNumber do
  describe '#check' do
    let(:secret) {3}
    let(:subject) { SecretNumber.new(secret) }

    it "returns 0 when the guess is correct" do
      guess = secret
      expect(subject.check(guess)).to eq(0)
    end

 	it "returns too high when the guess is too high" do
 	   guess = 8
 	   expect(subject.check(guess)).to eq('too high')
 	end

	it "returns too low when the guess is too low" do
       guess = 2
      expect(subject.check(guess)).to eq(-1)
	end

#  Bonus test case for invalid input
    it 'raises an error when given input that is not a number' do
    	expect{SecretNumber("hello")}.to raise_error
  	end

   end
end
