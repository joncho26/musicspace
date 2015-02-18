post '/following/new' do
  Following.create(params[:following])
  redirect "/user/#{current_user.id}"
end