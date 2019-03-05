require 'rails_helper'

feature 'person creates food' do
  scenario 'sucessfully' do
    visit foods_path
    click_on 'New Food'

    fill_in 'Name', with: 'Chicken Masala'
    fill_in 'Price', with: 15000
    click_on 'Create Food'

    expect(page).to have_content 'Food was successfully created.'
    expect(page).to have_content 'Name: Chicken Masala'
    expect(page).to have_content 'Price: 15000'
  end
end
