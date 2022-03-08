require "./lib/artist"
require "./lib/photograph"

describe Photograph do
  before(:each) do
  attributes = {
  id: "1",
  name: "Rue Mouffetard, Paris (Boy with Bottles)",
  artist_id: "4",
  year: "1954"
  })
  photograph = Photograph.new(attributes)
  end

  it "exists and has readable attributes" do
    expect(photograph).to be_a(Photograph)
    ecpect(photograph.id).to eq(1)
    ecpect(photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
    ecpect(photograph.artist_id).to eq("4")
    ecpect(photograph.year).to eq("1954")
  end
end
