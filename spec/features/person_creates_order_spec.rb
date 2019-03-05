require 'rails_helper'

feature 'person creates order' do
  scenario 'sucessfully' do
    create(:table, number: 1)
    create(:client, name: 'Pedro')

    visit orders_path
    click_on 'New Order'

    select '1', from: 'Table'
    select 'Pedro', from: 'Client'
    click_on 'Create Order'

    expect(page).to have_content 'Order was successfully created.'
    expect(page).to have_content 'Table: 1'
    expect(page).to have_content 'Client: Pedro'
  end
end
