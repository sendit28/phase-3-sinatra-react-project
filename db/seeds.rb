puts "🌱 Seeding spices..."

# create users 5 times

# c = Category.first
# c.journal_entry = JournalEntry.first

5.times do
  data = Faker::Internet.user('username', 'email', 'password')
  user = User.create(name: data[:username], email: data[:email], password: data[:password])
  2.times do
    JournalEntry.create(
      title: Faker::Hipster.sentence,
      content: Faker::Hipster.paragraph_by_chars(characters: 500),
      date: Date.today, 
      user_id: user.id
    )
  end
end


binding.pry

# end

# Category.create(name: "Open", journal_entry_id: 1)






puts "✅ Done seeding!"
