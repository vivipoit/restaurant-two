require 'rails_helper'

feature 'person creates order' do
  scenario 'sucessfully' do
    create(:table, number: 1)
    create(:client, name: 'Pedro')
    create(:food, name: 'Chicken', price: 7500)
    create(:food, name: 'Noodles', price: 5000)

    visit orders_path
    click_on 'New Order'

    select '1', from: 'Table'
    select 'Pedro', from: 'Client'
    check 'Chicken'
    check 'Noodles'
    click_on 'Create Order'

    expect(page).to have_content 'Order was successfully created.'
    expect(page).to have_content 'Table: 1'
    expect(page).to have_content 'Client: Pedro'
    expect(page).to have_content 'Foods: Chicken Noodles'
  end
end
