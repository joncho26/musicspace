post '/comment/new' do
  comment = Comment.new(params[:comment])
  comment.update_attributes(user_id:current_user.id)

  if comment.save
    redirect "/artist/#{comment.artist_id}"
  end
end


put '/comment/:id' do
  comment = Comment.find(params[:id])
  comment.update_attributes(params[:comment])
  redirect "/artist/#{comment.artist.id}"
end


delete '/comment/:id' do
  comment = Comment.find(params[:id])
  comment.destroy
  redirect "/artist/#{comment.artist.id}"
end