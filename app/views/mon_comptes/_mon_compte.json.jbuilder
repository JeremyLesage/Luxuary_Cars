json.extract! mon_compte, :id, :h_f, :nom, :prenom, :numéro_tel, :adress, :photo, :created_at, :updated_at
json.url mon_compte_url(mon_compte, format: :json)
