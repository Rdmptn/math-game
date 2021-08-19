class Player

  attr_accessor :hp
  attr_reader :id
  
  def initialize(id)
    @id = (id)
    @hp = 3
  end

end
