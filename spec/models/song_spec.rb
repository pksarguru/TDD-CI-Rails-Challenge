require 'rails_helper'

describe Song do
  let(:song) {Song.new(title: "It Wasn't Me", artist: "Shaggy")}

  describe "has attributes" do
    it "has a title" do
      expect(song.title).to eq("It Wasn't Me")
    end

    it "has an artist" do
      expect(song.artist).to eq("Shaggy")
    end
  end

end
