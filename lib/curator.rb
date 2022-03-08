class Curator
  attr_reader :artists, :photographs

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end
end
