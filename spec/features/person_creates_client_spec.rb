require 'rails_helper'

feature 'person creates client' do
  scenario 'sucessfully' do
    visit clients_path
    click_on 'New Client'

    fill_in 'Name', with: 'John'
    fill_in 'Number of people', with: 4
    click_on 'Create Client'

    expect(page).to have_content 'Client was successfully created.'
    expect(page).to have_content 'Name: John'
    expect(page).to have_content 'Number of people: 4'
  end
end
