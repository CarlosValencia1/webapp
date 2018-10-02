require 'sinatra'
set :bind, '0.0.0.0'

get '/hola' do
    "hola mundo"
end

get '/hola/:nombre' do
    id = params['nombre']
    "Valor de id: #{id}"
  end