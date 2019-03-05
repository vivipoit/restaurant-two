require 'rails_helper'

feature 'person creates table' do
  scenario 'sucessfully' do
    visit tables_path
    click_on 'New Table'

    fill_in 'Number', with: 1
    fill_in 'Location', with: 'Balcony'
    fill_in 'Note', with: 'Broken leg'
    click_on 'Create Table'

    expect(page).to have_content 'Table was successfully created.'
    expect(page).to have_content 'Number: 1'
    expect(page).to have_content 'Location: Balcony'
    expect(page).to have_content 'Note: Broken leg'
  end
end
