json.extract! burger, :id, :name, :price, :image, :nutriscore, :created_at, :updated_at, :code, :nutriments
json.url burger_url(burger, format: :json)
