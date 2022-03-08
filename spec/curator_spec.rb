require "./lib/curator"
require "./lib/artist"
require "./lib/photograph"

describe Curator do
  before(:each) do
    @curator = Curator.new
    @photo_1 = Photograph.new({
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "1",
      year: "1954"
    })
    @photo_2 = Photograph.new({
      id: "2",
      name: "Moonrise, Hernandez",
      artist_id: "2",
      year: "1941"
    })

  end

  it "exists and has readable attributes" do
    expect(@curator).to be_a(Curator)
    expect(@curator.photographs).to eq([])
    expect(@curator.artists).to eq([])
  end

  it "can add photographs to it's collection" do
    @curator.add_photograph(@photo_1)
    @curator.add_photograph(@photo_2)
    expect(@curator.photographs).to eq([@photo_1, @photo_2])
  end
end
