post '/following/new' do
  Following.create(params[:following])
  redirect "/user/#{current_user.id}"
end


delete '/following/:id' do
  Following.find(params[:id]).destroy
  redirect "/user/#{current_user.id}"
end