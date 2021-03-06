require 'sinatra'

get '/' do
  "Hello Happy World!"
end
 
get '/about/*' do
  "#{params[:splat]}"
end

get '/form' do
  erb :form
end

post '/form' do
  "you said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  status 404
  'not found'
end
