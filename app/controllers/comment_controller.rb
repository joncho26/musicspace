post '/comment/new' do
  comment = Comment.new(params[:comment])
  comment.update_attributes(user_id:current_user.id)

  if comment.save
    redirect "/artist/#{comment.artist_id}"
  end
end