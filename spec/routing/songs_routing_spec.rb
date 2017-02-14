require "rails_helper"

RSpec.describe "Routing to songs", :type => :routing do
  it "routes GET /songs to songs#index" do
    expect(get: "/songs").to route_to("songs#index")
  end

end
