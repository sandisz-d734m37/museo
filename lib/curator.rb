require 'pry'
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

  def artists_with_multiple_photographs
    list = []
    photographs_by_artist.find_all{|artist, works| list << artist if works.length > 1}
    list.map{|artist| artist.name}
  end

  def photographs_taken_by_artist_from(country)
    list = []
    photographs_by_artist.find_all do
      |artist, works| list << works if artist.country == country
    end
    list.flatten
  end
end
