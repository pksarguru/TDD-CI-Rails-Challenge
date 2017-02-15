require 'rails_helper'

feature "creating a new user" do
  scenario "can create new user in database" do
    visit '/'

    find('#nav-login').click

    within("#new-user") do
      fill_in 'Username', with: 'deathbone'
      fill_in 'Email', with: 'deathbone@deathbone.com'
      fill_in 'Password', with: 'deathbone'
    end

    find('#new-user-submit').click

    expect(page).to have_content("deathbone")
    expect(User.last.username).to eq("deathbone")
  end
end
