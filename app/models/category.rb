class Category < ActiveRecord::Base
  belongs_to :journal_entry
end