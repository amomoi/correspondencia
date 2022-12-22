json.extract! lockerusuario, :id, :nome, :email, :cpf, :celular, :senha, :created_at, :updated_at
json.url lockerusuario_url(lockerusuario, format: :json)
