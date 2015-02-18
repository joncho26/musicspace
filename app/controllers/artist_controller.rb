get '/artist/all' do
  @all_artists = Artist.all
  erb :'artist/all'
end

get '/artist/new' do
  erb :'artist/new'
end

get '/artist/:id' do |id|
  @artist = Artist.find(id)
  erb :'artist/artist_profile'
end

post '/artist/new' do
  artist = Artist.create(params[:artist])
  redirect "/artist/#{artist.id}"
end





