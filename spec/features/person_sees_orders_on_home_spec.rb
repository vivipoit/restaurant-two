require 'rails_helper'

feature 'person sees orders on home' do
  scenario 'sucessfully' do
    visit root_path

    expect(page).to have_content 'Orders'
  end
end
