class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

    # --------------------------------------
  
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
      # question ?????????????
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

    # ------------------------------------------- 
    # .order(date: :desc)

  get '/journal_entries' do
    journal_entry = JournalEntry.all
    journal_entry.to_json
  end

  get '/journal_entries/:id' do
    journal_entry = JournalEntry.find(params[:id])
    journal_entry.to_json
  end

 
  post '/journal_entries' do
    journal_entry = JournalEntry.create(
      title: params[:title],
      content: params[:content],
      date: params[:date],
      user_id: params[:user_id]
    )
    journal_entry.to_json
  end

  patch '/journal_entries/:id' do
    journal_entry = JournalEntry.find(params[:id])
    journal_entry.update(
      title: params[:title],
      content: params[:content],
      date: params[:date],
      # question?????? do i need to update user_id
    )
    journal_entry.to_json
  end

  delete '/journal_entries/:id' do
    journal_entry = JournalEntry.find(params[:id])
    journal_entry.destroy
    journal_entry.to_json
  end
    
      # ----------------------------------------------
  
  get '/categories' do
    categories = Category.all
    categories.to_json
  end



end
