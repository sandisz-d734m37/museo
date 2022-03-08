class Curator
  attr_reader :artists, :photographs

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find{|artist| artist.id == id}
  end

  def photographs_by_artist
    ph_by_ph = Hash.new(0)
    @artists.each do |artist|
      ph_by_ph[artist] = @photographs.find_all do |photograph|
        photograph.artist_id == artist.id
      end
    end
  ph_by_ph
  end
end
