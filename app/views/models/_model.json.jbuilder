json.extract! model, :id, :name, :description, :image, :montant, :created_at, :updated_at
json.url model_url(model, format: :json)
