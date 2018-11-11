# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

languages = [
  {
    code:"PT",
    name:"portuguese"
  },
  {
    code:"ENG",
    name:"english"
  }
]

users = [
  {
    email: "maria@mail.com",
    password: "123456",
    admin: true
  }
]

  puts "Cleaning up database"
  User.delete_all
  Language.delete_all

  puts "Creating Languages"
  languages.each do |language|
    Language.create(language)
  end

  puts "Creating Users"
  users.each do |user|
    User.create(user)
  end

  puts "Created #{Language.count} languages"
  puts "Created #{User.count} user"
