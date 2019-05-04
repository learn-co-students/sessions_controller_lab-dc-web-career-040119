require 'rails_helper'

describe 'login' do
  before do
    visit '/login'
  end

  it "redirects to the home page if a valid name is entered." do
    fill_in "name", with: 'Lige'
    click_button 'login'
    expect(current_path).to eql("/")
  end

  it "redirects to the login page if the user does not enter a name" do
    fill_in "name", with: ''
    click_button 'login'
    expect(current_path).to eql(sessions_new_path)
  end
end