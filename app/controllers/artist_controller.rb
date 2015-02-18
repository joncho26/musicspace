get '/artist/all' do
  @all_artists = Artist.all
  erb :'artist/all'
end

get '/artist/:id' do |id|
  @artist = Artist.find(id)
  erb :'artist/artist_profile'
end



