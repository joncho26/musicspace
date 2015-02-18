get '/user/:id' do
  @user = User.find(params[:id])
  erb :'user/profile'
end

delete '/user/:id' do
  User.find(params[:id]).destroy
  redirect "/"
end