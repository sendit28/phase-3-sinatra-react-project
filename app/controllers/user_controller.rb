class UserController < ApplicationController

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  post '/users' do
    user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    user.to_jason
  end

  delete 'users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end