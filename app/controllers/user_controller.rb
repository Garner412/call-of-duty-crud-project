get '/users/new' do
  erb :'/users/new'
end

get '/users/:id' do
  erb :'users/show'
end

post '/users/login' do
  user = User.find_by(:username => params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect 'users/show'
  else
    redirect '/'
  end
end


get '/user/:id' do
  player = User.find(params[:id])
  erb :'users/show'
end
