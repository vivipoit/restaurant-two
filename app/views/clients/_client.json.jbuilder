json.extract! client, :id, :name, :number_of_people, :created_at, :updated_at
json.url client_url(client, format: :json)
