get '/' do
  erb :welcome, layout:false
end

get '/login' do
  erb :'auth/login'
end

get '/signup' do

end
