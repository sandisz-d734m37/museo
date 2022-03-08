require "./lib/artist"
require "./lib/photograph"

describe Photograph do
  before(:each) do
    attributes = {
    id: "1",
    name: "Rue Mouffetard, Paris (Boy with Bottles)",
    artist_id: "4",
    year: "1954"
    }
    @photograph = Photograph.new(attributes)
  end


  it "exists and has readable attributes" do
    expect(@photograph).to be_a(Photograph)
    expect(@photograph.id).to eq(1)
    expect(@photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
    expect(@photograph.artist_id).to eq("4")
    expect(@photograph.year).to eq("1954")
  end
end

describe Artist do
  before(:each) do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    @artist = Artist.new(attributes)
  end

  it "exists and has readable attributes" do
    expect(@artist).to be_a(Artist)
    expect(@artist.id).to eq("2")
    expect(@artist.name).to eq("Ansel Adams")
    expect(@artist.born).to eq("1902")
    expect(@artist.died).to eq("1984")
    expect(@artist.country).to eq("United States")
  end

  it "can determine the artist age at death" do
    expect(@artist.age_at_death).to eq(82)
  end
end
