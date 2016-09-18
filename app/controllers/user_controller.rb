get '/users/new' do
  erb :'/users/new'
end

get '/users/:id/success' do
  erb :'/users/success'
end

get '/users/:id/edit' do
  erb :'/users/edit'
end

get '/users/:id' do
  @player = User.find(params[:id])
  erb :'users/show'
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

post '/users' do
  p params
  player = User.create!(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], email: params[:email], password: params[:password])
  p player
  redirect "/users/#{player.id}/success"
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

put '/users/:id' do
  player = User.find(params[:id])
  player.update_attributes(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], email: params[:email], password: current_user.password)
  redirect "/users/#{player.id}"
end









