require 'sinatra'
require 'sinatra/reloader' if development?
require './song.rb'

set :bind, '0.0.0.0'

get '/' do
    @titulo = "La pagina principal contiene..."
    erb :home
end

get '/contacto' do
    @contacto = "La pagina contacto"
    erb :contacto
end

get '/acercade' do
    erb :acercade
end

get '/clientes' do
    @clientes = (1..20).to_a
    erb :clientes
end

get '/canciones' do
    @canciones = Song.all
    erb :canciones
    #halm slim o erb son procesadores
end

get '/alumno' do
    alumno={
        :nombre =>"carlos",
        :carrera =>"ISC"
    }

    alumno.to_json
end



not_found do
    erb :not_found
end