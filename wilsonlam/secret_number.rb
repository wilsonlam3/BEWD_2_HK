class SecretNumber

  MIN_NUMBER = 1
  MAX_NUMBER = 10

  def initialize(number)
    @number = number
  end


  # @return: a number > 0 if the guess is too high
  #          0 if the guess is correct
  #          a number < 0 if the guess is too low
  def check(guess)
    raise unless @number.is_a? Numeric

    if guess == @number
      0
    elsif guess > @number
      'too high'
    elsif guess < @number
      -1
    end
  end

end
