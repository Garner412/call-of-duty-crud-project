
get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  user = User.find_by(:username => params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect 'users/show'
  else
    erb :index
  end
end

get '/user' do
  erb :'users/show'
end
