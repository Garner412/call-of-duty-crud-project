get '/' do
  if logged_in?
    redirect "users/#{current_user.id}"
  end
  erb :index
end
