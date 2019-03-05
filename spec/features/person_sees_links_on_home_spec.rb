require 'rails_helper'

feature 'person sees links on home' do
  scenario 'sucessfully' do
    visit root_path

    expect(page).to have_link 'Tables', href: tables_path
    expect(page).to have_link 'Clients', href: clients_path
    expect(page).to have_link 'Foods', href: foods_path
  end
end
