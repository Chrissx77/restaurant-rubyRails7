json.extract! food, :id, :nome, :categoria, :quantità, :created_at, :updated_at
json.url food_url(food, format: :json)
