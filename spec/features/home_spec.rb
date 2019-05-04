require 'rails_helper'

describe 'homepage', type: :feature do
  before do
    visit '/'
  end

  it "Tells the user to login if they aren't already." do
    expect(page).to have_content('Login!')
  end

  it 'Provides the user with a link to login_path' do
    expect(page).to have_link('Login!', href: '/login')
  end

  it "Greets the user if they are logged in." do
    visit '/login'
    fill_in "name", with: 'Lige'
    click_button 'login'
    expect(page).to have_content('Hi, Lige.')
  end


end