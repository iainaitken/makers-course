require 'sinatra'

get '/' do
  @name = %w(Amigo Misty Almond).sample
  erb :index
end

get '/hello' do
  @visitor = params[:name]
  erb :index
end

get '/secret' do
  'This is a secret page'
end
