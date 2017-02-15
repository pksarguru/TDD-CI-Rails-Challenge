require 'rails_helper'

feature "visiting the homepage" do
  scenario "user can see a list of songs" do
    song = Song.create!(title: "Boombastic", artist: "Shaggy")

    visit '/'

    expect(page).to have_content("Boombastic")
    expect(page).to have_content("By Shaggy")
  end
end
