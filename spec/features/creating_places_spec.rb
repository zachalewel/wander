require 'rails_helper'

feature 'Creating places' do
  scenario 'can create a place' do

    visit '/'

    click_link 'New Place'

    click_button 'Create Place'

    expect(page).to have_content("Place was successfully created.")

  end


end
