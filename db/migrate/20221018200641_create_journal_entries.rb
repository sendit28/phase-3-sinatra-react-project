class CreateJournalEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :journal_entries do |t|
      t.string :title
      t.text :content
      t.date :date
      t.integer :user_id
    end
  end
end
