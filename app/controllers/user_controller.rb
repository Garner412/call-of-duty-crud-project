get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  player = User.create(username: params[:username], email: params[:email], password: params[:password])
  p player.username
  p player.email
  p player.encrypted_password
  redirect "/users/#{player.id}/success"
end

get '/users/:id/success' do
  erb :'/users/success'
end

post '/users/login' do
  user = User.find_by(:username => params[:username])
  p params
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect '/'
  end
end

get '/users/:id' do
  @player = User.find(params[:id])
  erb :'users/show'
end
