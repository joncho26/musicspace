get '/upvote/:id' do
  artist = Artist.find(params[:id])
  Upvote.create(artist:artist, user:current_user)
  # {upvote:artist.upvotes.length}.to_json
  {upvote:artist.upvotes.length}.to_json
end