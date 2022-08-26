json.extract! order, :id, :montant_total, :avance, :reste, :etat_facture, :livraison, :image, :etat_command, :priority, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
