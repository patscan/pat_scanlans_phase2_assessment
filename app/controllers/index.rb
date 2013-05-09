get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/register' do
  # Look in app/views/index.erb
  user = User.create(params)
  @errors = user.errors.full_messages
  if @errors.length > 0
    return "Sorry, incorrect registration parameters"
  else
    session[:user_id] = user.id
    redirect '/'
  end
end





