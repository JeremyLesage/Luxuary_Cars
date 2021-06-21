json.extract! locations_achat, :id, :nom_voiture, :vitesse_max, :acceleration, :puissance, :prix, :photo, :created_at, :updated_at
json.url locations_achat_url(locations_achat, format: :json)
