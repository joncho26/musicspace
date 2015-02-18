get '/artist/:id' do |id|
  @artist = Artist.find(id)
  erb :'artist/artist_profile'
end
