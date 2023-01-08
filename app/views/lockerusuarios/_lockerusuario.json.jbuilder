json.extract! lockerusuario, :id, :nome, :email, :cpf, :celular, :senha, :created_at, :updated_at, :lockercliente_id
json.url lockerusuario_url(lockerusuario, format: :json)
