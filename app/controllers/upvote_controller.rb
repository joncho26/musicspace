get '/upvote/:id' do
  artist = Artist.find(params[:id])
  Upvote.create(artist:artist, user:current_user)

end