require "rails_helper"

RSpec.describe "Routing to the application", :type => :routing do
  it "routes GET / to songs#index" do
    expect(get: "/").to route_to("songs#index")
  end

end
