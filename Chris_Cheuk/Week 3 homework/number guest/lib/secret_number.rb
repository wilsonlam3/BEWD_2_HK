class SecretNumber
  attr_accessor :value

  def initialize
    @value=[1,3,5,7]

  end
  def random
  	@value[rand(4)]
  end


end
