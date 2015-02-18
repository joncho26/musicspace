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

# edit artist
get '/artist/:id/edit' do
  @artist = Artist.find(params[:id])
  erb :'artist/edit'
end

put '/artist/:id' do
  artist = Artist.find(params[:id])
  artist.update(params[:artist])
  redirect "/artist/#{artist.id}"
end

delete '/artist/:id' do
  Artist.find(params[:id]).destroy
  redirect "/artist/all"
end





