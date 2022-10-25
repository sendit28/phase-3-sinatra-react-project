class JournalController < ApplicationController

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
    )
    journal_entry.to_json
  end

  delete '/journal_entries/:id' do
    journal_entry = JournalEntry.find(params[:id])
    journal_entry.destroy
    journal_entry.to_json
  end
     
end