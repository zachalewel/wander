require 'rails_helper'

feature 'User Authentication' do
  scenario 'allows a user to signup' do
    visit '/welcome'

    expect(page).to have_link("Signup")

    click_link 'Signup'

    fill_in 'Username', with: 'zach' 
    fill_in 'Email', with: 'j@j.com'
    fill_in 'Password', with: 'fast'
    fill_in 'Password Confirmation', with: 'fast'

click_button 'Signup'

expect(page).to have_text('Thank you for signing up zach')

  end

  scenario 'allows existing users to login' do
    user = FactoryGirl.create(:user)

    visit '/welcome'

    expect(page).to have_link('Login')

    click_link('Login')

    fill_in 'Email', with: user.email
    fill_in Password, with: user.password

    click_button 'Login'

    expect(page).to have_text("Signed in as #{user.username}")
  end
end
